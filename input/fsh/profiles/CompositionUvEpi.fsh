Profile: CompositionUvEpi
Parent: $clinicaldocument
Id: Composition-uv-epi
Title: "Composition (ePI)"
Description: """Clinical document used to represent the Electronic Product Information (ePI) data set. 
An Electronic Product Information (ePI) document is is authorised, statutory product information for medicines (i.e. summary of product characteristics, package leaflet and labelling) in a semi-structured format created using the common EU electronic standard.

This profile is based on the ClinicalDocument profile."""
* ^status = #active
* ^publisher = "HL7 International"
* ^purpose = "An Electronic Product Information (ePI) document is is authorised, statutory product information for medicines (i.e. summary of product characteristics, package leaflet and labelling) in a semi-structured format created using the common EU electronic standard."
* ^copyright = "HL7 International"
* . ^short = "Electronic Product Information composition"
* . ^definition = "Electronic Product Information composition. \r\nA composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."
// * text 
// * identifier MS
* status ^short = "preliminary | final | amended | entered-in-error | deprecated"
* type = $spor#100000155538
* type ^short = "Kind of composition (\"Package Leaflet\")"
* type ^definition = "Specifies that this composition refers to a Package Leaflet (ePI)"

* date 1..
* author ^short = "Who and/or what authored the ePI, that is the Markting Authorization Holder"
* author ^definition = "Identifies who is responsible for the information in the ePI."
* title 1..
* title ^short = "Electronic Product Information"
* title ^definition = "Official human-readable label for the composition.\r\n\r\nFor this document should be \"Electronic Product Information\" or any equivalent translation"


* section 1.. 
* section ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section ^extension.valueString = "Section"
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the ePI"
* section ^definition = "The root of the sections that make up the ePI composition."
* section.code 1.. 
* section.emptyReason ..0
* section.emptyReason ^mustSupport = false
* section contains
    whatIsIn 1..1 and
    whatIsFor 1..1  and
    toBeKnown 1..1  and
    howToTake 0..1  and
    sideEffects 0..1  and
    howToStore 0..1  and
    otherInfos 0..1 
	
	

* section[whatIsIn] ^short = "ePI What's in Section"
* section[whatIsIn] ^definition = "add definition"
* section[whatIsIn].title 1.. 
* section[whatIsIn].title ^short = "What's in section"
* section[whatIsIn].title ^definition = "The label for this particular section.  This will be part of the rendered content for the document, and is often used to build a table of contents."
* section[whatIsIn].code = $spor#100000155538-0
* section[whatIsIn].entry 1.. 
* section[whatIsIn].entry only Reference(Resource)

* section[whatIsFor] ^short = "ePI What's for Section"
* section[whatIsFor] ^definition = "add definition"
* section[whatIsFor].title 1.. 
* section[whatIsFor].title ^short = "What's for section"
* section[whatIsFor].title ^definition = "The label for this particular section.  This will be part of the rendered content for the document, and is often used to build a table of contents."
* section[whatIsFor].code = $spor#100000155538-1
* section[whatIsFor].entry 1.. 
* section[whatIsFor].entry only Reference(Resource)


* section[toBeKnown] ^short = "ePI to be known Section"
* section[toBeKnown] ^definition = "What you need to know before you take"
* section[toBeKnown].title 1.. 
* section[toBeKnown].title ^short = "To be known section"
* section[toBeKnown].title ^definition = "The label for this particular section.  This will be part of the rendered content for the document, and is often used to build a table of contents."
* section[toBeKnown].code = $spor#100000155538-2
* section[toBeKnown].entry 1.. 
* section[toBeKnown].entry only Reference(Resource)


* section[howToTake] ^short = "ePI How to take Section"
* section[howToTake] ^definition = "add description"
* section[howToTake].title 1.. 
* section[howToTake].title ^short = "How to take section"
* section[howToTake].title ^definition = "The label for this particular section.  This will be part of the rendered content for the document, and is often used to build a table of contents."
* section[howToTake].code = $spor#100000155538-3
* section[howToTake].entry 1..
* section[howToTake].entry only Reference(Resource)


* section[sideEffects] ^short = "ePI Side Effects Section"
* section[sideEffects] ^definition = "add description"
* section[sideEffects].title 1.. 
* section[sideEffects].title ^short = "Side Effects"
* section[sideEffects].title ^definition = "The label for this particular section.  This will be part of the rendered content for the document, and is often used to build a table of contents."
* section[sideEffects].code = $spor#100000155538-4
* section[sideEffects].entry 1..
* section[sideEffects].entry only Reference(Resource)


* section[howToStore] ^short = "ePI How to store Section"
* section[howToStore] ^definition = "add description"
* section[howToStore].title 1.. 
* section[howToStore].title ^short = "How to store section"
* section[howToStore].title ^definition = "The label for this particular section.  This will be part of the rendered content for the document, and is often used to build a table of contents."
* section[howToStore].code = $spor#100000155538-5
* section[howToStore].entry 1..
* section[howToStore].entry only Reference(Resource)


* section[otherInfos] ^short = "ePI other information Section"
* section[otherInfos] ^definition = "Contents of the pack and other information"
* section[otherInfos].title 1.. 
* section[otherInfos].title ^short = "Other information section"
* section[otherInfos].title ^definition = "The label for this particular section.  This will be part of the rendered content for the document, and is often used to build a table of contents."
* section[otherInfos].code = $spor#100000155538-6
* section[otherInfos].entry 1..
* section[otherInfos].entry only Reference(Resource)