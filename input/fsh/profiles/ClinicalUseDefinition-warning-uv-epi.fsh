Profile: ClinicalUseDefinitionWarningUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-warning-uv-epi
Title: "ClinicalUseDefinition Warning (ePI)"
Description: "ClinicalUseDefinition Warning (ePI) - Profile for Warning"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier ^short = "Business identifier for this clinical use definition"
* type = #warning
* type ^short = "warning"
* category ^short = "A categorization of the warning, used to group warnings under subject headings (e.g., pregnancy, overdose)"
* subject only Reference(MedicinalProductDefinition-uv-epi)
* subject ^short = "The medicinal product that this warning applies to"
* status ^short = "Whether this is a current warning or one that is no longer in effect"
* population only Reference(GroupUvEpi)
* population.reference 1..
* population ^short = "Population the warning applies to (a fully defined Group)"
* library ^short = "Logic used by the clinical use definition"

// The warning backbone, aligned to the base resource
* warning 1..1
* warning ^short = "A critical piece of information to be known about the product, other than an indication, contraindication, interaction or undesirable effect"
* warning.description ^short = "The text of the warning"
* warning.code ^short = "A coded or unformatted textual definition of this warning"

// The other clinical use types are profiled separately
* indication 0..0
* contraindication 0..0
* interaction 0..0
* undesirableEffect 0..0

// Terminology bindings
* category from VsClinicalUseDefinitionCategory (preferred)
* warning.code insert AdditionalBinding(#candidate, VsMeddra, MedDRA terms may be used in place of the base value set\, as is common in regulatory product information.)
