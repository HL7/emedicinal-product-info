Profile: ClinicalUseDefinitionWarningUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-warning-uv-epi
Title: "ClinicalUseDefinition Warning (ePI)"
Description: "ClinicalUseDefinition Warning (ePI)"

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
*  undesirableEffect 0..
*  warning 1..