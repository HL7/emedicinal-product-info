
RuleSet: ClinicalUseDefinitionCommonRules

/* --- NOT SURE ABOUT THE USAGE OF IDENTIFIER IN THE  EXAMPLES
* identifier.system = "https://spor.ema.europa.eu/rmswi#/"
* identifier.value = "Hypersensitivity reaction"
* identifier.use = #official
--- */

* identifier ^short = "Business identifier for this clinical use."
* status ^short = "Defines whether this clinical use is draft, active or retired"
* subject 1..* 
* subject only Reference(MedicinalProductDefinitionUvEpi)

// ADD VOC BINDING
