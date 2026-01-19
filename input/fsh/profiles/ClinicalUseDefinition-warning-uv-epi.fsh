Profile: ClinicalUseDefinitionWarningUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-warning-uv-epi
Title: "ClinicalUseDefinition Warning (ePI)"
Description: "ClinicalUseDefinition Warning (ePI) - Profile for Warning"
* ^status = #active
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #brr
* identifier 1..
* identifier.system 1..
* identifier.value 1..
* type = #warning
* category 1..
* subject 1..
* subject only Reference(MedicinalProductDefinition-uv-epi)
* status 1..
* population 1..
* warning 1..
