Profile: ManufacturedItemDefinitionUvEpi
Parent: ManufacturedItemDefinition
Id: ManufacturedItemDefinition-uv-epi
Title: "ManufacturedItemDefinition (ePI)"
Description: "ManufacturedItemDefinition (ePI)"

* identifier 1..
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[=].path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    spor 0..* MS
* identifier[spor] ^short = "SPOR (Europe)"
* identifier[spor] ^definition = "EMA - SPOR product identifier" // to be reviewed
* identifier[spor].system = $spor-prod // to be reviewed
* identifier[spor].value ^short = "Manufactured Item" // to be reviewed
* identifier[spor].use = #official

* status MS


// CHANGE TO A VALUE SET BASED DISCRIMINATOR
* manufacturedDoseForm.coding ^slicing.discriminator[0].type = #value
* manufacturedDoseForm.coding ^slicing.discriminator[=].path = "system"
* manufacturedDoseForm.coding ^slicing.rules = #open
* manufacturedDoseForm.coding contains
    spor 0..* MS
* manufacturedDoseForm.coding[spor] ^short = "SPOR (Europe)"
* manufacturedDoseForm.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
* manufacturedDoseForm.coding[spor].system = $spor // to be reviewed
* manufacturedDoseForm.coding[spor].code 1.. 

// CHANGE TO A VALUE SET BASED DISCRIMINATOR
* unitOfPresentation.coding ^slicing.discriminator[0].type = #value
* unitOfPresentation.coding ^slicing.discriminator[=].path = "system"
* unitOfPresentation.coding ^slicing.rules = #open
* unitOfPresentation.coding contains
    spor 0..* MS
* unitOfPresentation.coding[spor] ^short = "SPOR (Europe)"
* unitOfPresentation.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
* unitOfPresentation.coding[spor].system = $spor // to be reviewed
* unitOfPresentation.coding[spor].code 1.. 

 // Reference to Organization: Manufacturer
* manufacturer MS
* manufacturer only Reference(OrganizationUvEpi)
