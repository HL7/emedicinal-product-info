Profile: ListUvEpiDocuments
Parent: List
Id: List-uv-EpiDocuments
Title: "List - ePI documents"
Description: "This profile represents the constraints applied to the List resource by the Electronic Product Information (ePI) FHIR Implementation Guide."
* ^purpose = "An electronic product information (ePI) is authorised, statutory product information for medicines (i.e. summary of product characteristics, package leaflet and labelling) in a semi-structured format created using the common EU electronic standard."
* . ^short = "Electronic Product Information List"
* . ^definition = "Electronic Product Information List."

* identifier 1..
  * system 1..
  * value 1..
  * ^short = "Unique identifier only for this list of ePI documents associated with this medicinal product"
  * ^definition = "Unique identifier only for this list of ePI documents associated with this medicinal product"

* status
  * ^example.label = "general" 
  * ^example.valueCode = #current

* mode // restrict to working ?
  * ^example.label = "general"
  * ^example.valueCode = #working

* title 
  * ^short = "Name for this list of medicinal products" // It should contain the product name ?

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
    * ^short = "Marketing status of this medicinal product"
  * deleted
    * ^short = "True or False flag on whether this medicinal product was deleted."
  * date 
    * ^short = "Date of Last Authorization for this medicinal product."
  * item only Reference (BundleUvEpi)

* emptyReason	0..0




