Profile: ClinicalUseDefinitionUndesirableEffectUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-undesirable-effect-uv-epi
Title: "ClinicalUseDefinition Undesirable Effect (ePI)"
Description: "ClinicalUseDefinition Undesirable Effect (ePI) - Profile for Undesirable Effect"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier.system 1..1
* identifier.value 1..1
* type = #undesirable-effect
* category.coding 1..1
* category.coding.system 1..1
* category.coding.code 1..1
* category.coding.display 1..1
* status.coding 1..1
* status.coding.system 1..1
* status.coding.code 1..1
* status.coding.display 1..1
* undesirableEffect.symptomConditionEffect.concept.coding 1..1
* undesirableEffect.symptomConditionEffect.concept.coding.system 1..1
* undesirableEffect.symptomConditionEffect.concept.coding.code 1..1
* undesirableEffect.symptomConditionEffect.concept.coding.display 1..1
* undesirableEffect.classification.coding 1..1
* undesirableEffect.classification.coding.system 1..1
* undesirableEffect.classification.coding.code 1..1
* undesirableEffect.classification.coding.display 1..1
* undesirableEffect.frequencyOfOccurrence.coding 1..1
* undesirableEffect.frequencyOfOccurrence.coding.system 1..1
* undesirableEffect.frequencyOfOccurrence.coding.code 1..1
* undesirableEffect.frequencyOfOccurrence.coding.display 1..1
