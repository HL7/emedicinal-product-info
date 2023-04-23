from os import listdir, getcwd, mkdir
from os.path import exists
from jinja2 import Environment, FileSystemLoader
import pandas as pd
import sys
import uuid
import re
from datetime import datetime
from validator import pre_validation
import hashlib

context = {"now": datetime.now().strftime("%Y-%m-%dT%H:%M:%SZ")}


# total arguments
n = len(sys.argv)
if n < 3:
    raise Exception(
        "Please provide the path to the input file and the path to the output file"
    )


# Custom filter method
def regex_replace(s, find, replace):
    """A non-optimal implementation of a regex filter"""
    return re.sub(find, replace, s)


DATA_FILE = sys.argv[1]
TEMPLATE_FOLDER = sys.argv[2]
OUTPUT_FOLDER = sys.argv[3]

env = Environment(loader=FileSystemLoader(TEMPLATE_FOLDER), trim_blocks=True)
env.filters["regex_replace"] = regex_replace


def hash_id(string):
    hash_object = hashlib.md5(bytes(string, "utf-8"))
    return str(hash_object.hexdigest())


env.filters["create_hash_id"] = hash_id


def create_from_template(DATA_FILE, TEMPLATE_FOLDER, OUTPUT_FOLDER):
    elements = [
        "AdministrableProductDefinition",
        "Substance",
        "RegulatedAuthorization",
        "Organization",
        "ClinicalUseDefinition",
        "Composition",
        "Ingredient",
        "MedicinalProductDefinition",
        "ManufacturedItemDefinition",
        "PackagedProductDefinition",
        "Bundle",
    ]

    # create temp_folder:
    print(DATA_FILE, TEMPLATE_FOLDER, OUTPUT_FOLDER)

    if TEMPLATE_FOLDER[-1] != "/":
        TEMPLATE_FOLDER += "/"
    if OUTPUT_FOLDER[-1] != "/":
        OUTPUT_FOLDER += "/"

    temp_folder = getcwd() + "/temp/"

    if not exists(temp_folder):
        mkdir(temp_folder)
    major_name = DATA_FILE.lower().split("/")[-1].split(".")[0].replace(" ", "_")
    real_output_folder = OUTPUT_FOLDER + major_name + "-ema-automatic/"
    print(real_output_folder)
    if not exists(real_output_folder):
        mkdir(real_output_folder)
    for sheet in elements:
        # read an excel file and convert
        # into a dataframe object
        df = pd.DataFrame(pd.read_excel(DATA_FILE, sheet_name=sheet))
        #   pre_validation(df, sheet)
        df["id_hash"] = df["id"].apply(lambda x: uuid.uuid4())
        df["id"].fillna(df["id_hash"], inplace=True)
        # show the dataframe
        #   print(df)
        df.to_csv(temp_folder + sheet + ".csv", index=True)

    data_dict = {"MajorName": major_name}  # if needed
    data = {"dictionary": data_dict, "turn": "1"}

    # multiple elementsa
    for file in listdir(temp_folder):
        print(file)
        n_file = file.split(".")[0]
        # with open(TEMPLATE_FOLDER + n_file + ".fsh", "r") as file:

        # templateString = env.get_template(file.read())

        t = env.get_template(n_file + ".fsh")
        # t = Template(templateString, trim_blocks=True)

        df = pd.read_csv(temp_folder + n_file + ".csv", index_col=0)

        df = df.astype(str)
        data["data"] = df
        t.stream(data=data, **context).dump(real_output_folder + n_file + ".fsh")

        # get ids:
        ## goes for all, checks for ID and adds to list
        ## then creates again with references
    object_ids = {}
    for file in listdir(real_output_folder):
        #  print(file)
        # n_file = file.split(".")[0]
        with open(real_output_folder + file, "r") as file1:
            Lines = file1.readlines()
            instances = []
            ids = []
            for line in Lines:

                if "Instance: " in line:
                    # print(line)
                    instances.append(line.replace("Instance: ", "").strip())
                    # if "* id = " in line:
                    # print(line)
                    ids.append(line.replace("Instance: ", "").strip())

            object_ids[file.split(".")[0]] = [(i, j) for i, j in zip(instances, ids)]

    print("ob", object_ids)
    data["references"] = object_ids

    print("newline" + " ---" * 30)
    # multiple elementsa
    for file in listdir(temp_folder):
        # print(file)
        n_file = file.split(".")[0]
        # with open(TEMPLATE_FOLDER + n_file + ".fsh", "r") as f:
        #     templateString = f.read()
        # t = Template(templateString, trim_blocks=True)
        t = env.get_template(n_file + ".fsh")

        df = pd.read_csv(temp_folder + file, index_col=0)
        # print(df)
        df = df.astype(str)
        data["data"] = df
        data["turn"] = "2"
        t.stream(data=data, **context).dump(real_output_folder + n_file + ".fsh")


if __name__ == "__main__":
    create_from_template(DATA_FILE, TEMPLATE_FOLDER, OUTPUT_FOLDER)
