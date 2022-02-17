Profile: ClinicalUseDefinitionUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-uv-epi
Title: "ClinicalUseDefinition (ePI)"
Description: "ClinicalUseDefinition (ePI)"

/* --- NOT SURE ABOUT THE USAGE OF IDENTIFIER IN THE  EXAMPLES
* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "Hypersensitivity reaction"
* identifier.use = #official
--- */

* type MS // = #contraindication


 // Reference to MedicinalProductDefinition: EU/1/16/1157/002 100/50 x5 pre-filled pens
* subject 1..* 
* subject only Reference(MedicinalProductDefinitionUvEpi)

*  contraindication.diseaseSymptomProcedure.concept 1.. MS
*  indication.diseaseSymptomProcedure.concept 1.. MS
*  interaction.interactant.itemCodeableConcept 1.. MS // https://gsrs.ncats.nih.gov/ginas/app/beta/#YL5FZ2Y5U1 "METHOTREXATE"