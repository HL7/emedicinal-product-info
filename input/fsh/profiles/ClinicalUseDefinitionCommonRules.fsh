
RuleSet: ClinicalUseDefinitionCommonRules

/* --- NOT SURE ABOUT THE USAGE OF IDENTIFIER IN THE  EXAMPLES
* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "Hypersensitivity reaction"
* identifier.use = #official
--- */

* identifier ^short = "Business identifier for this issue."
* status ^short = "Whether this is a current issue or one that has been retired"
// Reference to MedicinalProductDefinition: EU/1/16/1157/002 100/50 x5 pre-filled pens
* subject 1..* 
* subject only Reference(MedicinalProductDefinitionUvEpi)

// ADD VOC BINDING
