Profile: ClinicalUseDefinitionUndesirableEffectUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-undesirable-effect-uv-epi
Title: "ClinicalUseDefinition Undesirable Effect (ePI)"
Description: "ClinicalUseDefinition Undesirable Effect (ePI) - Profile for Undesirable Effect"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier ^short = "Business identifier for this clinical use definition"
* type = #undesirable-effect
* type ^short = "undesirable-effect"
* category ^short = "A categorization of the undesirable effect, used to group undesirable effects under subject headings (e.g., by system organ class)"
* subject only Reference(MedicinalProductDefinition-uv-epi)
* subject ^short = "The medicinal product that this undesirable effect applies to"
* status ^short = "Whether this is a current undesirable effect or one that is no longer in effect"
* population only Reference(GroupUvEpi)
* population.reference 1..
* population ^short = "Population the undesirable effect applies to (a fully defined Group)"
* library ^short = "Logic used by the clinical use definition"

// The undesirable effect backbone, aligned to the base resource
* undesirableEffect 1..1
* undesirableEffect ^short = "Specifics for when this is an undesirable effect"
* undesirableEffect.symptomConditionEffect ^short = "The situation in which the undesirable effect may manifest (e.g., nausea, headache)"
* undesirableEffect.classification ^short = "High level classification of the effect (e.g., serious, non-serious)"
* undesirableEffect.frequencyOfOccurrence ^short = "How often the effect is seen (e.g., very common, common, uncommon, rare, very rare)"

// The other clinical use types are profiled separately
* indication 0..0
* contraindication 0..0
* interaction 0..0
* warning 0..0
