Profile: ClinicalUseDefinitionInteractionUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-interaction-uv-epi
Title: "ClinicalUseDefinition Interaction (ePI)"
Description: "ClinicalUseDefinition Interaction (ePI)"


* insert ClinicalUseDefinitionCommonRules
* type = #interaction

* interaction.interactant.itemCodeableConcept from VsAtcClassification (preferred)
* interaction.interactant.itemCodeableConcept
  * insert AdditionalBinding ( #conformance, VsSubstance, The specific substance that interacts., The specific substance that interacts.)

* interaction.type ^short = "The type of the interaction e.g. drug-drug, drug-food, drug-lab."