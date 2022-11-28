import sys
from os import listdir, getcwd, mkdir, rmdir
from creator import create_from_template

# total arguments
n = len(sys.argv)
if n < 3:
    raise Exception(
        "Please provide the path to the input file and the path to the output file"
    )


DATA_FOLDER = sys.argv[1]
TEMPLATE_FOLDER = sys.argv[2]
OUTPUT_FOLDER = sys.argv[3]


for file in listdir(DATA_FOLDER):

    if file.endswith(".xlsx") and not file.startswith("~$"):
        print(file)
        print("**" * 50)
        create_from_template(file, TEMPLATE_FOLDER, OUTPUT_FOLDER)
