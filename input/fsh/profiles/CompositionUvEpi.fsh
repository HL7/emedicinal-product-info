Profile: CompositionUvEpi
Parent: Composition
Id: Composition-uv-epi
Title: "Composition (ePI)"
Description: """Clinical document used to represent the Electronic Product Information (ePI) data set. 
An Electronic Product Information (ePI) document is an authorised, statutory product information for medicines (i.e. summary of product characteristics, package leaflet and labelling) in a semi-structured format created using the common EU electronic standard."""
* ^status = #active
* ^purpose = "An Electronic Product Information (ePI) document is an authorised, statutory product information for medicines (i.e. summary of product characteristics, package leaflet and labelling) in a semi-structured format created using the common EU electronic standard."
* . ^short = "Electronic Product Information composition"
* . ^definition = "Electronic Product Information composition. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."
// * text 
* identifier ^short = "ePI business identifier"
* status ^short = "preliminary|final|amended|entered-in-error|deprecated"
* type from VsEpiType (extensible)
* type ^short = "Kind of ePI (\"Package Leaflet\")"
* type ^definition = "Specifies that this composition refers to a Package Leaflet (ePI)"
* category ^short  = "ePI document" // add a common code (use a LOINC X-code ?)
* category = $loinc#X-EPI "electronic Product Information"

// * subject 1..
// * subject only Reference (RegulatedAuthorizationUvEpi)
* subject ^short = "What the composition is about"

* date 1..
* date ^short = "Date of last revision of the ePI"
* author ^short = "Who and/or what authored the ePI, that is the Markting Authorization Holder"
* author ^definition = "Identifies who is responsible for the information in the ePI."
* title 1..
* title ^short = "Electronic Product Information"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Electronic Product Information\" or any equivalent translation"


// USED TO RECORD THE FIRST Authorization TO BE CHECKED
* attester 1..
* attester.mode = $composition-attestation-mode#official
* attester.time 1..

* custodian ^short = "Organization which maintains the composition."
* relatesTo ^short = "Relationships to other ePI compositions/documents"

* section 1..
  * ^short = "Sections composing the ePI"
  * ^definition = "The root of the sections that make up the ePI composition."
  * code 1.. // => ADD VALUE SET - SLICE PER JURISDICTION ?
  * text ^short = "Section text"
  * orderedBy ^short = "Order of section entries." // IS THIS ACTUALLY NEEDED ?
  * emptyReason ^short = "Why the section is empty."
  * section ^short = "Nested Section."