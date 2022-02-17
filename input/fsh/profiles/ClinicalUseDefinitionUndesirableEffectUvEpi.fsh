Profile: ClinicalUseDefinitionUndesirableEffectUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-undesirableEffect-uv-epi
Title: "ClinicalUseDefinition Undesirable Effect (ePI)"
Description: "ClinicalUseDefinition Undesirable Effect (ePI)"

/* --- NOT SURE ABOUT THE USAGE OF IDENTIFIER IN THE  EXAMPLES
* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "Hypersensitivity reaction"
* identifier.use = #official
--- */

* type = #undesirableEffect


 // Reference to MedicinalProductDefinition: EU/1/16/1157/002 100/50 x5 pre-filled pens
* subject 1..* 
* subject only Reference(MedicinalProductDefinitionUvEpi)

*  contraindication 0..
*  indication 0..
*  interaction 0..
*  undesirableEffect 1..
*  warning 0..