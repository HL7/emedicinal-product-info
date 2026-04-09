Profile: BundleEpiType1
Parent: Bundle
Id: bundle-epi-type1
Title: "Bundle - ePI Type 1"
Description: "This profile represents the constraints applied to the Bundle resource used in the Electronic Product Information (ePI) FHIR Implementation Guide."
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* id 1..
* meta.versionId 1..
* meta.lastUpdated 1..
* meta.profile 1..
* identifier.system 1..1
* identifier.value 1..1
* type = #document
* timestamp 1..
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains composition 0..*
* entry[composition].resource only CompositionEpiType1
