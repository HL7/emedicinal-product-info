// ============================================================================
// Structured dosing extensions (DRAFT)
//
// Agreed direction from the Vulcan ePI meetings (2026-07-02, 2026-09-10,
// 2026-09-17, action item 2026-10-08):
//   * Structured dosing moves from MedicationKnowledge into
//     ClinicalUseDefinition.indication, so the dose is always keyed to its
//     indication.
//   * Each dosing guideline may point to a sub-population. Populations and
//     sub-populations are fully defined Group resources - no AND/OR logic
//     across Groups.
//   * The Dosage datatype is extended so a dose can name the item it applies
//     to: a manufactured item (co-packaged products, where each item in the
//     pack has its own dose) or an administrable product (when the product is
//     reconstituted or otherwise transformed before it is given).
//
// Status: draft, pending review of the extension shapes by the ePI team.
// ============================================================================

Extension: DosingGuideline
Id: ext-epi-dosing-guideline
Title: "Dosing Guideline (ePI)"
Description: """DRAFT. A structured dosing guideline for the indication it sits on. Repeat the extension for each sub-population that has its own regimen.

* `population` - the sub-population this regimen is for, as a fully defined Group. Leave it out when the regimen applies to the whole population of the indication.
* `treatmentIntent` - the intended outcome of the regimen, when the label states one.
* `dosage` - one phase of the regimen (for example loading, maintenance, Day 1, Days 2 to 5), each with an optional `type` and one or more Dosage `instruction` entries. Instructions that share a Dosage.sequence are taken together."""
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ext-epi-dosing-guideline"
* ^status = #draft
* ^experimental = true
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^context[+].type = #element
* ^context[=].expression = "ClinicalUseDefinition.indication"
* extension contains
    population 0..1 and
    treatmentIntent 0..1 and
    dosage 1..*
* extension[population] ^short = "Sub-population this regimen is for (a fully defined Group)"
* extension[population] ^definition = "The sub-population this dosing guideline applies to. The Group must define the whole sub-population, including any characteristics it shares with the indication's population (for example age 18 years or over AND creatinine clearance 30 to 59 mL/min). Leave it out when the regimen applies to the indication's whole population."
* extension[population].value[x] only Reference(GroupUvEpi)
* extension[treatmentIntent] ^short = "Intended outcome of the regimen"
* extension[treatmentIntent].value[x] only CodeableConcept
* extension[dosage] ^short = "One phase of the regimen, with its instructions"
* extension[dosage].extension contains
    type 0..1 and
    instruction 1..*
* extension[dosage].extension[type] ^short = "Kind of phase (e.g., loading, maintenance, Day 1, Days 2 to 5)"
* extension[dosage].extension[type].value[x] only CodeableConcept
* extension[dosage].extension[instruction] ^short = "Dosage instruction. Instructions sharing a sequence are taken together."
* extension[dosage].extension[instruction] ^definition = "A structured dosage instruction. Always populate Dosage.text with the authorised wording. For co-packaged products, repeat the instruction once per item with the same Dosage.sequence, and name the item with the Dosage Manufactured Item extension."
* extension[dosage].extension[instruction].value[x] only Dosage

Extension: DosageManufacturedItem
Id: ext-epi-dosage-manufactured-item
Title: "Dosage Manufactured Item (ePI)"
Description: "DRAFT. The item that a dosage instruction applies to. Reference the ManufacturedItemDefinition when a pack contains more than one manufactured item and each has its own dose (for example two 150 mg tablets of one kind with one 100 mg tablet of another). Reference the AdministrableProductDefinition when the product is reconstituted or otherwise transformed before it is given and the dose is stated for the administrable product."
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ext-epi-dosage-manufactured-item"
* ^status = #draft
* ^experimental = true
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^context[+].type = #element
* ^context[=].expression = "Dosage"
* value[x] only Reference(ManufacturedItemDefinitionUvEpi or AdministrableProductDefinitionUvEpi)
* value[x] ^short = "The manufactured item or administrable product this dose is taken from"
