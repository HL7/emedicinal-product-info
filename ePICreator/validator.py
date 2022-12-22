import pandas as pd


def pre_validation(df, sheet):
    """Pre-validation of the input data"""

    def if_has_spaces(df, col):
        if df[col].str.strip().str.contains(" ").any():
            raise Exception(str(col) + " cannot contain spaces")

    def if_has_spaces_or_null(df, col):
        for item in df[col]:
            if not pd.isna(item):
                if " " in item:
                    raise Exception(str(col) + " cannot contain spaces")

    def if_numeric_or_null(df, col):
        if not (
            pd.to_numeric(df[col], errors="coerce").notnull() | df[col].isnull()
        ).all():
            raise Exception(str(col) + " must be numeric or null")

    def if_numeric(df, col):
        if not pd.to_numeric(df[col], errors="coerce").notnull().all():
            raise Exception(str(col) + " must be numeric")

    def if_has_newline(df, col):
        if df[col].str.contains("\n").any():
            raise Exception(str(col) + " cannot contain new lines (enters)")

    def validate_AdministrableProductDefinition(df):
        """Validate the ingredient sheet"""
        if_has_spaces(df, "status")
        if_numeric(df, "unit_presentationID")
        if_numeric(df, "routeID")
        if_numeric(df, "doseFormID")
        if_has_newline(df, "name")
        return "ok"

    def validate_ingredient(df):
        """Validate the ingredient sheet"""
        if_has_spaces(df, "identifier")
        if_has_spaces(df, "StrengthBasis")
        if_numeric_or_null(df, "quantity")
        if_numeric(df, "roleID")
        if_has_newline(df, "name")
        return "ok"

    def validate_ManufacturedItemDefinition(df):
        """Validate the ingredient sheet"""
        if_has_spaces(df, "status")
        if_numeric(df, "unit_presentationID")
        if_numeric(df, "doseFormID")
        if_has_newline(df, "name")
        if_has_spaces(df, "identifier")

        return "ok"

    def validate_MedicinalProductDefinition(df):
        """Validate the ingredient sheet"""
        if_has_newline(df, "productname")
        if_has_spaces(df, "status")
        if_has_spaces(df, "countryCode")

        if_numeric(df, "statusSuplyID")
        if_has_newline(df, "inventedNamePart")
        if_has_newline(df, "ScientificNamePart")
        if_has_newline(df, "StrengthPart")
        if_has_newline(df, "PharmaceuticalDosePart")

        return "ok"

    def validate_Organization(df):
        """Validate the ingredient sheet"""
        if_has_spaces(df, "identifier")
        if_numeric_or_null(df, "address_postalCode")
        if_numeric(df, "typeID")
        if_has_newline(df, "name")
        return "ok"

    def validate_PackagedProductDefinition(df):
        """Validate the ingredient sheet"""
        if_has_spaces_or_null(df, "identifier")
        if_numeric_or_null(df, "inside_packaging_typeID")
        if_numeric_or_null(df, "inside_packaging_quantity")
        if_numeric_or_null(df, "packaging_quantity")
        if_numeric_or_null(df, "Packaging_typeID")
        if_numeric_or_null(df, "packaging_materialID")
        if_numeric_or_null(df, "packaging_quantity")

        if_numeric(df, "typeID")

        if_has_newline(df, "name")
        return "ok"

    if sheet == "Ingredient":
        return validate_ingredient(df)

    if sheet == "AdministrableProductDefinition":
        return validate_AdministrableProductDefinition(df)
    if sheet == "ManufacturedItemDefinition":
        return validate_ManufacturedItemDefinition(df)
    if sheet == "MedicinalProductDefinition":
        return validate_MedicinalProductDefinition(df)
    if sheet == "Organization":
        return validate_Organization(df)
    if sheet == "PackagedProductDefinition":
        return validate_PackagedProductDefinition(df)
