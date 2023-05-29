
RuleSet: ClinicalUseDefinitionCommonRules

* identifier ^short = "Business identifier for this clinical use."
* status ^short = "Defines whether this clinical use is draft, active or retired"
* subject 1..* 
* subject only Reference(MedicinalProductDefinitionUvEpi)

// ADD VOC BINDING
