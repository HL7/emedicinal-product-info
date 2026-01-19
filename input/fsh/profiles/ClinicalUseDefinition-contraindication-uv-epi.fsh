Profile: ClinicalUseDefinitionContraindicationUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-contraindication-uv-epi
Title: "ClinicalUseDefinition Contraindication (ePI)"
Description: "ClinicalUseDefinition Contraindication (ePI) - Profile for Contraindication"
* ^status = #active
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #brr
* identifier 1..
* identifier.system 1..
* identifier.value 1..
* type = #contraindication
* category 1..
* subject 1..
* subject only Reference(MedicinalProductDefinition-uv-epi)
* status 1..
* contraindication 1..
