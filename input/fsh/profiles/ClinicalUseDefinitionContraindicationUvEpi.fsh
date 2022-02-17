Profile: ClinicalUseDefinitionContraindicationUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-contraindication-uv-epi
Title: "ClinicalUseDefinition Contraindication (ePI)"
Description: "ClinicalUseDefinition Contraindication (ePI)"

/* --- NOT SURE ABOUT THE USAGE OF IDENTIFIER IN THE  EXAMPLES
* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "Hypersensitivity reaction"
* identifier.use = #official
--- */

* type = #contraindication


 // Reference to MedicinalProductDefinition: EU/1/16/1157/002 100/50 x5 pre-filled pens
* subject 1..* 
* subject only Reference(MedicinalProductDefinitionUvEpi)

*  contraindication 1..
*  contraindication.diseaseSymptomProcedure.concept 1.. MS
*  interaction 0..
*  undesirableEffect 0..
*  warning 0..