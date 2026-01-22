Profile: ClinicalUseDefinitionWarningUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-warning-uv-epi
Title: "ClinicalUseDefinition Warning (ePI)"
Description: "ClinicalUseDefinition Warning (ePI) - Profile for Warning"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier.system 1..1
* identifier.value 1..1
* type = #warning
* category.coding 1..1
* category.coding.system 1..1
* category.coding.code 1..1
* category.coding.display 1..1
* status.coding 1..1
* status.coding.system 1..1
* status.coding.code 1..1
* status.coding.display 1..1
* warning.code.coding 1..1
* warning.code.coding.system 1..1
* warning.code.coding.code 1..1
* warning.code.coding.display 1..1
