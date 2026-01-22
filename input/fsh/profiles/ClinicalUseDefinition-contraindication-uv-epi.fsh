Profile: ClinicalUseDefinitionContraindicationUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-contraindication-uv-epi
Title: "ClinicalUseDefinition Contraindication (ePI)"
Description: "ClinicalUseDefinition Contraindication (ePI) - Profile for Contraindication"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier.system 1..1
* identifier.value 1..1
* type = #contraindication
* category.coding 1..1
* category.coding.system 1..1
* category.coding.code 1..1
* category.coding.display 1..1
* status.coding 1..1
* status.coding.system 1..1
* status.coding.code 1..1
* status.coding.display 1..1
* contraindication.diseaseSymptomProcedure ^short = "The situation that is being defined as contraindication"
* contraindication.diseaseSymptomProcedure.concept.coding 1..1
* contraindication.diseaseSymptomProcedure.concept.coding.system 1..1
* contraindication.diseaseSymptomProcedure.concept.coding.code 1..1
* contraindication.diseaseSymptomProcedure.concept.coding.display 1..1
* contraindication.diseaseSymptomProcedure.concept.coding 1..1
* contraindication.diseaseSymptomProcedure.concept.coding.system 1..1
* contraindication.diseaseSymptomProcedure.concept.coding.code 1..1
* contraindication.diseaseSymptomProcedure.concept.coding.display 1..1
* contraindication.indication.concept.coding 1..1
* contraindication.indication.concept.coding.system 1..1
* contraindication.indication.concept.coding.code 1..1
* contraindication.indication.concept.coding.display 1..1
* contraindication.otherTherapy.therapyRelationshipType.coding 1..1
* contraindication.otherTherapy.therapyRelationshipType.coding.system 1..1
* contraindication.otherTherapy.therapyRelationshipType.coding.code 1..1
* contraindication.otherTherapy.therapyRelationshipType.coding.display 1..1
* contraindication.otherTherapy.indication.concept.coding 1..1
* contraindication.otherTherapy.indication.concept.coding.system 1..1
* contraindication.otherTherapy.indication.concept.coding.code 1..1
* contraindication.otherTherapy.indication.concept.coding.display 1..1
