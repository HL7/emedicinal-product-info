Profile: CompositionUvEpi
Parent: Composition
Id: Composition-uv-epi
Title: "Composition (ePI)"
Description: "The Composition captures the section headings, sub-section headings, and narrative text (For example, paragraphs, bulleted lists, tables) in an ePI."
* ^status = #active
* ^purpose = "This profile represents the constraints applied to the Composition resource used in an Electronic Product Information (ePI) document."
* insert SetFmmandStatusRule ( 2, trial-use )
* identifier 1..
  * system 1..
  * value 1..
  * ^short = "Unique identifier only for this version of the Composition"
  * ^definition = "Unlike the Bundle identifier which persists, the Composition identifier does not persist across versions. Each new version of the Composition receives a new identifier."

* version ^short = "An explicitly assigned identifer of a variation of the content in the ePI"

* status ^short = "preliminary|final|amended|entered-in-error|deprecated"

* type // from VsEpiType (preferred)
* type ^short = "Type of ePI document template"
* type ^definition = "Specifies the type of ePI template. For example, Package Insert, Patient Information, Summary of Product Characteristics, Human Prescription, Drug Label."

* category ^short = "Categorization of ePI"

* language 1..1
* language ^short = "The language of the ePI's narrative text"

* subject 0..*
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

* relatesTo ^short = "Cross-reference to anotherother ePI compositions or ePI document()s)"
* relatesTo ^definition = "A crossreference from this ePI's composition to another related Composition or ePI document."

* section 1..
  * ^short = "Level 1 section heading for the whole ePI"
  * ^definition = "This is the root or level 1 section heading in the ePI. All other section headings are sub-sections, or children, of this section heading"
  * title
    * ^short = "Section heading defined by the market authorization holder"
    * ^definition = "This section heading is the counterpart to the coded section heading from the health authority's ePI template. For example, the health authority ePI template may have '1. What X is and what it is used for' as the coded section heading. The market authorization holder modifies this such that 'X' is replaced with the brand name of the drug."
  * code 0..1 
  * code from VsSectionCode (example)
    * ^short = "Section heading defined by the health authority. Cannot be changed by the market authorization holder"
  * text ^short = "Narrative text for this section (e.g., paragraphs, bulleted lists, tables)."
  * emptyReason ^short = "Reason the section is empty."
  * section 
    *  ^short = "Nested sub-section headings for level 2, 3, 4 or 5."
    *  ^definition = "Nested Sections sub-section headings for level 2, 3, 4 or 5."
    * title ^short = "Section heading defined by the market authorization holder"
    * code 0..1 
    * code from VsSectionCode (example)
      * ^short = "Coded section heading defined by the health authority."
    * text ^short = "Narrative text for this section."
    * emptyReason ^short = "Reason the section is empty."
