from os import listdir, getcwd, mkdir, rmdir
from os.path import isfile, join, exists
import glob
from jinja2 import Template
import pandas as pd
from pathlib import Path
import numpy as np
import sys
import uuid

# total arguments
n = len(sys.argv)
if n < 3:
    raise Exception(
        "Please provide the path to the input file and the path to the output file"
    )
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


DATA_FILE = sys.argv[1]
TEMPLATE_FOLDER = sys.argv[2]
OUTPUT_FOLDER = sys.argv[3]
print(DATA_FILE, TEMPLATE_FOLDER, OUTPUT_FOLDER)
if TEMPLATE_FOLDER[-1] != "/":
    TEMPLATE_FOLDER += "/"
if OUTPUT_FOLDER[-1] != "/":
    OUTPUT_FOLDER += "/"

# create temp_folder:
temp_folder = getcwd() + "/temp/"

if not exists(temp_folder):

    mkdir(temp_folder)

for sheet in elements:
    # read an excel file and convert
    # into a dataframe object
    df = pd.DataFrame(pd.read_excel("Karvea.xlsx", sheet_name=sheet))
    df["id_hash"] = df["id"].apply(lambda x: uuid.uuid4())
    df["id"].fillna(df["id_hash"], inplace=True)
    # show the dataframe
    #   print(df)
    df.to_csv(temp_folder + sheet + ".csv", index=True)

data_dict = {} #if needed
data = {"dictionary": data_dict, "turn": "1"}

# multiple elementsa
for file in listdir(temp_folder):
    print(file)
    n_file = file.split(".")[0]
    with open(TEMPLATE_FOLDER + n_file + ".fsh", "r") as file:
        templateString = file.read()
    t = Template(templateString, trim_blocks=True)

    df = pd.read_csv(temp_folder + n_file + ".csv", index_col=0)

    df = df.astype(str)
    data["data"] = df
    t.stream(data=data).dump(OUTPUT_FOLDER + n_file + ".fsh")

    # get ids:
    ## goes for all, checks for ID and adds to list
    ## then creates again with references
object_ids = {}
for file in listdir(OUTPUT_FOLDER):
    #  print(file)
    # n_file = file.split(".")[0]
    with open(OUTPUT_FOLDER + file, "r") as file1:
        Lines = file1.readlines()
        list_ids = []

        for line in Lines:
            if "Instance: " in line:
                # print(line)
                list_ids.append(line.replace("Instance: ", "").strip())
            if "* id = " in line:
                # print(line)
                list_ids.append(line.replace("* id = ", "").strip())
        object_ids[file.split(".")[0]] = list_ids

print(object_ids)
data["references"] = object_ids


# multiple elementsa
for file in listdir(temp_folder):
    print(file)
    n_file = file.split(".")[0]
    with open(TEMPLATE_FOLDER + n_file + ".fsh", "r") as f:
        templateString = f.read()
    t = Template(templateString, trim_blocks=True)

    df = pd.read_csv(temp_folder + file, index_col=0)
    # print(df)
    df = df.astype(str)
    data["data"] = df
    data["turn"] = "2"
    t.stream(data=data).dump(OUTPUT_FOLDER + n_file + ".fsh")

# with open (TEMPLATE_FOLDER + "Bundle.fsh", "r") as file:
#    templateString = file.read()
# t = Template(templateString, trim_blocks=True)
# t.stream(data=data).dump(OUTPUT_FOLDER + "Bundle.fsh")

# rmdir(temp_folder)
