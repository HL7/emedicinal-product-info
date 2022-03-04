Profile: ClinicalUseDefinitionInteractionUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-interaction-uv-epi
Title: "ClinicalUseDefinition Interaction (ePI)"
Description: "ClinicalUseDefinition Interaction (ePI)"


* insert ClinicalUseDefinitionCommonRules
* type = #interaction

*  contraindication 0..0
*  indication 0..0
*  interaction 1..
  *  interactant.itemCodeableConcept 1.. // https://gsrs.ncats.nih.gov/ginas/app/beta/#YL5FZ2Y5U1 "METHOTREXATE"
  *  type ^short = "The type of the interaction e.g. drug-drug interaction, drug-food interaction, drug-lab test interaction."
*  undesirableEffect 0..0
*  warning 0..0