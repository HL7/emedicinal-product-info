Profile: ClinicalUseDefinitionInteractionUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-interaction-uv-epi
Title: "ClinicalUseDefinition Interaction (ePI)"
Description: "ClinicalUseDefinition Interaction (ePI)"


* insert ClinicalUseDefinitionCommonRules
* type = #interaction

* interaction
  * interactant ^slicing.discriminator[0].type = #value
  * interactant ^slicing.discriminator[=].path = "system"
  * interactant ^slicing.rules = #open
  * interactant contains
      substance 0.. and
	   substanceclass 0..

  * interactant[substance]
    * itemCodeableConcept from VsSubstance (preferred)
    * ^short = "The specific substance that interacts."
    
  * interactant[substanceclass]
    * itemCodeableConcept from VsAtcClassification (preferred)
    * ^short = "The class of substances that interacts"

  *  type ^short = "The type of the interaction e.g. drug-drug, drug-food, drug-lab."