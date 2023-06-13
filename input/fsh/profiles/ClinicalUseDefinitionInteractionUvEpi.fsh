Profile: ClinicalUseDefinitionInteractionUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-interaction-uv-epi
Title: "ClinicalUseDefinition Interaction (ePI)"
Description: "ClinicalUseDefinition Interaction (ePI)"


* insert ClinicalUseDefinitionCommonRules
* type = #interaction

* contraindication 0..0
* indication 0..0
// * interaction 0..0
* warning 0..0
* undesirableEffect 0..0
* interaction.interactant.itemCodeableConcept
* interaction.interactant.itemCodeableConcept from http://hl7.org/fhir/ValueSet/interactant (example)
//in the value set extensible is the code defined for "Conformance Binding"
  * insert AdditionalBinding (#extensible "Conformance Binding", VsSubstance, The specific substance that interacts., The specific substance that interacts.)

* interaction.type ^short = "The type of the interaction e.g. drug-drug, drug-food, drug-lab."