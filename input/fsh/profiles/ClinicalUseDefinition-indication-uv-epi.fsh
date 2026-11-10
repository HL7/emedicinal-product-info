Profile: ClinicalUseDefinitionIndicationUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-indication-uv-epi
Title: "ClinicalUseDefinition Indication (ePI)"
Description: "ClinicalUseDefinition Indication (ePI) - Profile for Indication"
// Lock-down: references to resources that have an ePI profile point to that profile; target types without an ePI profile are kept.
* indication.otherTherapy.treatment only CodeableReference(MedicinalProductDefinitionUvEpi or Medication or Substance or SubstanceDefinitionUvEpi or NutritionProduct or BiologicallyDerivedProduct or ActivityDefinition)
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier ^short = "Business identifier for this clinical use definition"
* type = #indication
* type ^short = "indication"
* category ^short = "A categorization of the indication, used to group indications under subject headings"
* subject only Reference(MedicinalProductDefinition-uv-epi)
* subject ^short = "The medicinal product that this indication applies to"
* status ^short = "Whether this is a current indication or one that is no longer in effect"
* population only Reference(GroupUvEpi)
* population.reference 1..
* population ^short = "Population the indication applies to (a fully defined Group)"
* library ^short = "Logic used by the clinical use definition"

// The indication backbone, aligned to the base resource
* indication 1..1
* indication ^short = "Specifics for when this is an indication"
* indication.diseaseSymptomProcedure ^short = "The situation that is being defined as an indication"
* indication.diseaseStatus ^short = "The status of the disease or symptom for the indication (e.g., chronic, metastatic)"
* indication.comorbidity ^short = "A comorbidity or coexisting condition for the indication"
* indication.intendedEffect ^short = "The intended effect, aim or strategy to be achieved (e.g., prevention, cure, symptom relief)"
* indication.duration[x] ^short = "Timing or duration information for the indication, as a range or as text"
* indication.undesirableEffect only Reference(ClinicalUseDefinition-undesirable-effect-uv-epi)
* indication.undesirableEffect ^short = "An unwanted side effect or negative outcome of the indicated treatment"
* indication.applicability ^short = "An expression that returns true or false, indicating whether the indication is applicable"
* indication.otherTherapy ^short = "Information about use of the product in relation to other therapies described as part of the indication"
* indication.otherTherapy.relationshipType ^short = "The type of relationship between the product indication and the other therapy (e.g., given with, replaces)"
* indication.otherTherapy.treatment ^short = "The other therapy, as a product, substance or procedure"

// Structured dosing (draft): the regimen sits on the indication it treats.
// Repeat dosingGuideline for each sub-population with its own regimen.
* indication.extension contains DosingGuideline named dosingGuideline 0..*
* indication.extension[dosingGuideline] ^short = "Structured dosing for this indication, one per (sub-)population"

// The other clinical use types are profiled separately
* contraindication 0..0
* interaction 0..0
* undesirableEffect 0..0
* warning 0..0

// Terminology bindings
* category from VsClinicalUseDefinitionCategory (preferred)
* indication.diseaseSymptomProcedure insert AdditionalBinding(#candidate, VsMeddra, MedDRA terms may be used in place of the base value set\, as is common in regulatory product information.)
* indication.comorbidity insert AdditionalBinding(#candidate, VsMeddra, MedDRA terms may be used in place of the base value set\, as is common in regulatory product information.)
