Profile: ListUvEpi
Parent: List
Id: List-uv-epi
Title: "List - ePI"
Description: "This profile represents the constraints applied to the List resource by the Electronic Product Information (ePI) FHIR Implementation Guide."
* ^purpose = "An electronic product information (ePI) is authorised, statutory product information for medicines (i.e. summary of product characteristics, package leaflet and labelling) in a semi-structured format created using the common EU electronic standard."
* . ^short = "Electronic Product Information List"
* . ^definition = "Electronic Product Information List."

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

* code from VsExampleUseCodesForListIdSystems (extensible)

* subject 0..0

* encounter 0..0

* date 
  * ^short = "When the list was prepared."

* source only Reference(OrganizationUvEpi)

* orderedBy = #entry-date (exactly)
  * ^example.label = "general"
  * ^example.valueCode = $list-order#entry-date

* note
  * text

* entry
  * flag from VsMarketingStatusIdSystems (extensible)
    * ^short = "Marketing status of this Medicinal Product"
  * deleted
    * ^short = "True or False flag on whether this medicinal product is delete."
  * date 
    * ^short = "Date of Last Authorization for this medicinal product"
  * item only Reference (BundleUvEpi)

* emptyReason	0..0




