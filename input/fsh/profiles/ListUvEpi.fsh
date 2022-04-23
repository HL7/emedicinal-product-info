Profile: ListUvEpi
Parent: List
Id: List-uv-epi
Title: "List - ePI"
Description: "This profile represents the constraints applied to the List resource by the Electronic Product Information (ePI) FHIR Implementation Guide."
* ^purpose = "An electronic product information (ePI) is authorised, statutory product information for medicines (i.e. summary of product characteristics, package leaflet and labelling) in a semi-structured format created using the common EU electronic standard."
* . ^short = "Electronic Product Information List"
* . ^definition = "Electronic Product Information List."
* identifier 1.. 
* status
  * ^example.label = "general" 
  * ^example.valueCode = #current
* mode // restrict to working ?
  * ^example.label = "general"
  * ^example.valueCode = #working
* title ^short = "Name of the list" // It should contain the product name ?
* code = $loinc#X-EPI // check the code 
* subject 0..0
* encounter 0..0
* date ^short = "When the list was prepared."
* source // only Reference(OrganizationUvEpi) NOT in 5.0 snapshot 1
* orderedBy 
  * ^example.label = "general"
  * ^example.valueCode = $list-order#entry-date
* entry
  * flag ^short = "Status of this ePI"
  * flag from $VS-composition-status
  * date ^short = "When the ePI was added to the list"
  * item only Reference( BundleUvEpi )
* emptyReason	0..0




