Profile: ClinicalUseDefinitionInteractionUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-interaction-uv-epi
Title: "ClinicalUseDefinition Interaction (ePI)"
Description: "ClinicalUseDefinition Interaction (ePI)"

/* --- NOT SURE ABOUT THE USAGE OF IDENTIFIER IN THE  EXAMPLES
* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "Hypersensitivity reaction"
* identifier.use = #official
--- */

* type = #interaction


 // Reference to MedicinalProductDefinition: EU/1/16/1157/002 100/50 x5 pre-filled pens
* subject 1..* 
* subject only Reference(MedicinalProductDefinitionUvEpi)

*  contraindication 0..
*  indication 0..
*  interaction 1..
*  interaction.interactant.itemCodeableConcept 1.. MS // https://gsrs.ncats.nih.gov/ginas/app/beta/#YL5FZ2Y5U1 "METHOTREXATE"
*  undesirableEffect 0..
*  warning 0..