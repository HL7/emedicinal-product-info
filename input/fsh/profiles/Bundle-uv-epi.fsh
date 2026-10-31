// ============================================================================
// Shared Bundle rules. Bundle (ePI) and the Type 2 and Type 3 Bundles are
// copies of each other; the only difference is the content of the entry slices.
// ============================================================================
RuleSet: EpiBundleCommon
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..1
* identifier ^short = "Persistent business identifier for the Bundle that does not change across versions. Similar to SPL SetID."
* identifier ^definition = "Persistent business identifier for the Bundle that does not change across versions. Similar to SPL SetID."
* type = #document (exactly)
* timestamp 1..
* timestamp ^short = "Persistent original date of approval."
* timestamp ^definition = "Persistent original date of approval."
* entry 1..*
* entry obeys epi-bdl-uuid
* entry.fullUrl 1..1
* entry.fullUrl ^short = "UUID for the resource"
* entry.fullUrl ^definition = "UUID for the resource, as a UUID URN (urn:uuid:...). References between resources in the Bundle use the same UUID URN."
* entry.resource 1..1
* entry[composition] ^short = "Composition (ePI): carries the label content (e.g., section headings, text, images, tables)"
* entry[composition] ^definition = "The Composition (ePI) that carries the label content (e.g., section headings, text, images, tables)."
* entry[composition].resource only CompositionUvEpi

RuleSet: EpiBundleSlicing(rules)
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = {rules}

Profile: BundleUvEpi
Parent: Bundle
Id: Bundle-uv-epi
Title: "Bundle (ePI)"
Description: "This profile represents the constraints applied to the Bundle resource used for an Electronic Product Information (ePI) document. It is used for ePI Type 1 (Digital Label), where the Bundle carries the Composition (ePI); other resources may also be included. The Type 2 and Type 3 Bundle profiles apply the same rules and add entry slices for product and clinical resources."
* insert EpiBundleSlicing(#open)
* entry contains composition 1..1
* insert EpiBundleCommon
