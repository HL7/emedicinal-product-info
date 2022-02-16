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

/* == COMMENTED NOT SURE IT IS NEEDED
* category 1..
// ==> CHANGE THE KIND OF SLICE (based on value set)
* category ^slicing.discriminator[0].type = #value
* category ^slicing.discriminator[=].path = "coding.system"
* category ^slicing.rules = #open
* category contains
    spor 0..* MS
* category[spor] ^short = "SPOR (Europe)"
* category[spor] ^definition = "EMA - SPOR product identifier" // to be reviewed
* category[spor].coding.system = $spor // to be reviewed
* category[spor].value ^short = "Kind of contraindication" // to be reviewed
=== */


 // Reference to MedicinalProductDefinition: EU/1/16/1157/002 100/50 x5 pre-filled pens
* subject 1..* 
* subject only Reference(MedicinalProductDefinitionUvEpi)

*  contraindication.diseaseSymptomProcedure.concept 1.. MS
*  indication.diseaseSymptomProcedure.concept 1.. MS
*  interaction.interactant.itemCodeableConcept 1.. MS // https://gsrs.ncats.nih.gov/ginas/app/beta/#YL5FZ2Y5U1 "METHOTREXATE"