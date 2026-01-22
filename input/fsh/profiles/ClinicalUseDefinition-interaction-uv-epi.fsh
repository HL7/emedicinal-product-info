Profile: ClinicalUseDefinitionInteractionUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-interaction-uv-epi
Title: "ClinicalUseDefinition Interaction (ePI)"
Description: "ClinicalUseDefinition Interaction (ePI) - Profile for Interaction"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier.system 1..1
* identifier.value 1..1
* type = #interaction
* category.coding 1..1
* category.coding.system 1..1
* category.coding.code 1..1
* category.coding.display 1..1
* status.coding 1..1
* status.coding.system 1..1
* status.coding.code 1..1
* status.coding.display 1..1
* interaction.type.coding 1..1
* interaction.type.coding.system 1..1
* interaction.type.coding.code 1..1
* interaction.type.coding.display 1..1
* interaction.effect.concept.coding 1..1
* interaction.effect.concept.coding.system 1..1
* interaction.effect.concept.coding.code 1..1
* interaction.effect.concept.coding.display 1..1
* interaction.incidence.coding 1..1
* interaction.incidence.coding.system 1..1
* interaction.incidence.coding.code 1..1
* interaction.incidence.coding.display 1..1
* interaction.management.coding 1..1
* interaction.management.coding.system 1..1
* interaction.management.coding.code 1..1
* interaction.management.coding.display 1..1
