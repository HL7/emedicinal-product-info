Profile: ListUvProduct
Parent: List
Id: List-uv-product
Title: "List of the authorized medicinal products this ePI is for"
Description: "This profile represents the constraints applied to the List resource used to capture the authorized medicinal products in the ePI document."
* . ^short = "List of the ePI's authorized medicinal products"
* . ^definition = "List of the ePI's authorized medicinal products"

* identifier 1..
  * system 1..
  * value 1..
  * ^short = "Unique identifier only for this list of authorized products associated with this ePI"
  * ^definition = "Identifier for this list of all authorized products associated with this ePI."

* status
  * ^example.label = "general" 
  * ^example.valueCode = #current

* mode // restrict to working ?
  * ^example.label = "general"
  * ^example.valueCode = #working

* title 
  * ^short = "Name of the list" // It should contain the product name ?

* code from VsExampleUseCodesForList (extensible)

* subject 0..0

* encounter 0..0

* date 
  * ^short = "When the list was prepared."

* source only Reference(OrganizationUvEpi)

* orderedBy = #entry-date (exactly)
  * ^short = "Entries in the list are ordered by date"

* note
  * text
    * ^short = "Description or comments about the list's contents"

* entry
  * flag from VsMarketingStatus (extensible)
    * ^short = "Marketing status of this ePI document"
  * deleted
    * ^short = "True or False flag on whether this ePI document was deleted."
  * date 
    * ^short = "Date of Last Authorization for this ePI document."
  * item only Reference (MedicinalProductDefinitionUvEpi)

* emptyReason	0..0




