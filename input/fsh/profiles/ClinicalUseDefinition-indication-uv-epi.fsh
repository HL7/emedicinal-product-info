Profile: ClinicalUseDefinitionIndicationUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-indication-uv-epi
Title: "ClinicalUseDefinition Indication (ePI)"
Description: "ClinicalUseDefinition Indication (ePI) - Profile for Indication"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier.system 1..1
* identifier.value 1..1
* type = #indication
* category.coding 1..1
* category.coding.system 1..1
* category.coding.code 1..1
* category.coding.display 1..1
* status.coding 1..1
* status.coding.system 1..1
* status.coding.code 1..1
* status.coding.display 1..1
* indication.diseaseSymptomProcedure ^short = "The situation that is being defined as indication"
* indication.diseaseSymptomProcedure.concept.coding 1..1
* indication.diseaseSymptomProcedure.concept.coding.system 1..1
* indication.diseaseSymptomProcedure.concept.coding.code 1..1
* indication.diseaseSymptomProcedure.concept.coding.display 1..1


* indication.intendedEffect.concept.coding 1..1
* indication.intendedEffect.concept.coding.system 1..1
* indication.intendedEffect.concept.coding.code 1..1
* indication.intendedEffect.concept.coding.display 1..1
* indication.otherTherapy.relationshipType.coding 1..1
* indication.otherTherapy.relationshipType.coding.system 1..1
* indication.otherTherapy.relationshipType.coding.code 1..1
* indication.otherTherapy.relationshipType.coding.display 1..1
* indication.otherTherapy.treatment.concept.coding 1..1
* indication.otherTherapy.treatment.concept.coding.system 1..1
* indication.otherTherapy.treatment.concept.coding.code 1..1
* indication.otherTherapy.treatment.concept.coding.display 1..1
