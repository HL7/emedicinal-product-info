Profile: CompositionEuLeaflet
Parent: CompositionUvEpi
Id: Composition-eu-leaflet
Title: "Composition (EU Leaflet)"


Description: """This profile provides an example of how the Composition (ePI) profile can be specialized to represent a Product information Leaflet withi a specific jurisdiction"""
* ^status = #active
* ^purpose = "An Electronic Product Information (ePI) document is an authorised, statutory product information for medicines (i.e. summary of product characteristics, package leaflet and labelling) in a semi-structured format created using the common EU electronic standard."

* type = $spor#100000155538
* type ^short = "Kind of composition (\"Package Leaflet\")"
* type ^definition = "Specifies that this composition refers to a Package Leaflet (ePI)"

* subject only Reference(List) // to be checked

* section 1.. 
* section ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section ^extension.valueString = "Section"
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open

* section contains
    whatIsIn 0..1 and
    whatIsFor 0..1  and
    toBeKnown 0..1  and
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