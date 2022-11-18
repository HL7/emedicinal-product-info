Profile: CompositionUvEpi
Parent: Composition
Id: Composition-uv-epi
Title: "Composition (ePI)"
Description: """The Composition captures the section headings, sub-section headings, and narrative text (For example, paragraphs, bulleted lists, tables) in an ePI."""
* ^status = #active
* ^purpose = "This profile represents the constraints applied to the Composition resource used in an Electronic Product Information (ePI) document."
* . ^short = "Electronic Product Information composition"
* . ^definition = "Electronic Product Information composition. \r\nA composition is a set of source of regulated and scientifically validated information that assists healthcare professionals in prescribing and dispensing the medicine and informs consumers about its safe and effective use. \r\nWhile a Composition defines the structure and content of the ePI's narrative text, it does not contain the full content of an ePI document. The Bundle, of which the Composition is the first resource contained, is the container for the full  content of an ePI."
// * text 

* identifier 1..
  * system 1..
  * value 1..
  * ^short = "Unique identifier only for this version of the Composition"
  * ^definition = "Unlike the Bundle identifier which persists, the Composition identifier does not persist across versions. Each new version of the Composition receives a new identifier."

* status ^short = "preliminary|final|amended|entered-in-error|deprecated"

* type from VsEpiType (extensible)
* type ^short = "Type of ePI document template"
* type ^definition = "Specifies the type of ePI template. For example, Package Insert, Patient Information, Summary of Product Characteristics, Human Prescription, Drug Label."

* category ^short = "Categorization of ePI"

* subject 1..
* subject only Reference (MedicinalProductDefinitionUvEpi)
* subject ^short = "The authorized medicinal product(s) that this ePI's composition is about"

* date 1..
* date ^short = "Date of last revision for this version of the authorized ePI."

* author ^short = "The Organization responsible for the ePI"
* author ^definition = "Link to the Organization resource that describes the organization responsible for the ePI (For example, Markting Authorization Holder)."
* author only Reference(OrganizationUvEpi)

* title 1..
* title ^short = "Title of the ePI Document"
* title ^definition = "A brief summary name describing the ePI. The title should include: Proprietary Name(s) (Non-proprietary Name(s)) Dose Form, Route of Administration."

// USED TO RECORD THE FIRST Authorization TO BE CHECKED
* attester
* custodian 

* relatesTo ^short = "Cross-reference to anotherother ePI compositions or ePI document()s)"
* relatesTo ^definition = "A crossreference from this ePI's composition to another related Composition or ePI document."

* section 1..
  * ^short = "Level 1 section heading for the whole ePI"
  * ^definition = "This is the root or level 1 section heading in the ePI. All other section headings are sub-sections, or children, of this section heading"
  * code 1.. 
  * code from VsSectionCode (extensible) 
    * ^short = "unique identifier for this section."
  * text ^short = "Narrative text for this section."
  * orderedBy ^short = "Order of section entries."
  * emptyReason ^short = "Reason the section is empty."
  * section 
    *  ^short = "Nested Sections (sub-section headings for level 2, 3, 4 or 5)."
    *  ^definition = "Nested Sections (sub-section headings for level 2, 3, 4 or 5)."
    * title
      * ^short = "Section heading"
    * code 1.. 
    * code from VsSectionCode (extensible) 
      * ^short = "unique identifier for this section."
    * text ^short = "Narrative text for this section."
    * orderedBy ^short = "Order of section entries."
    * emptyReason ^short = "Reason the section is empty."
