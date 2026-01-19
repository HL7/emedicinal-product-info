Profile: ClinicalUseDefinitionIndicationUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-indication-uv-epi
Title: "ClinicalUseDefinition Indication (ePI)"
Description: "ClinicalUseDefinition Indication (ePI) - Profile for Indication"
* ^status = #active
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #brr
* identifier 1..
* identifier.system 1..
* identifier.value 1..
* type = #indication
* category 1..
* subject 1..
* subject only Reference(MedicinalProductDefinition-uv-epi)
* status 1..
* indication 1..
