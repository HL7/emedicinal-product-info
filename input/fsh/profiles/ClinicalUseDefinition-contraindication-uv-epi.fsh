Profile: ClinicalUseDefinitionContraindicationUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-contraindication-uv-epi
Title: "ClinicalUseDefinition Contraindication (ePI)"
Description: "ClinicalUseDefinition Contraindication (ePI) - Profile for Contraindication"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier ^short = "Business identifier for this clinical use definition"
* type = #contraindication
* type ^short = "contraindication"
* category ^short = "A categorization of the contraindication, used to group contraindications under subject headings"
* subject only Reference(MedicinalProductDefinition-uv-epi)
* subject ^short = "The medicinal product that this contraindication applies to"
* status ^short = "Whether this is a current contraindication or one that is no longer in effect"
* population only Reference(GroupUvEpi)
* population.reference 1..
* population ^short = "Population the contraindication applies to (a fully defined Group)"
* library ^short = "Logic used by the clinical use definition"

// The contraindication backbone, aligned to the base resource
* contraindication 1..1
* contraindication ^short = "Specifics for when this is a contraindication"
* contraindication.diseaseSymptomProcedure ^short = "The situation that is being defined as a contraindication"
* contraindication.diseaseStatus ^short = "The status of the disease or symptom for the contraindication (e.g., chronic, metastatic)"
* contraindication.comorbidity ^short = "A comorbidity or coexisting condition for the contraindication"
* contraindication.indication only Reference(ClinicalUseDefinition-indication-uv-epi)
* contraindication.indication ^short = "The indication that this is a contraindication for"
* contraindication.applicability ^short = "An expression that returns true or false, indicating whether the contraindication is applicable"
* contraindication.otherTherapy ^short = "Information about use of the product in relation to other therapies described as part of the contraindication"
* contraindication.otherTherapy.relationshipType ^short = "The type of relationship between the product and the other therapy (e.g., contraindicated only with, not recommended with)"
* contraindication.otherTherapy.treatment ^short = "The other therapy, as a product, substance or procedure"

// The other clinical use types are profiled separately
* indication 0..0
* interaction 0..0
* undesirableEffect 0..0
* warning 0..0

// Terminology bindings
* category from VsClinicalUseDefinitionCategory (preferred)
* contraindication.diseaseSymptomProcedure insert AdditionalBinding(#candidate, VsMeddra, MedDRA terms may be used in place of the base value set\, as is common in regulatory product information.)
* contraindication.comorbidity insert AdditionalBinding(#candidate, VsMeddra, MedDRA terms may be used in place of the base value set\, as is common in regulatory product information.)
