Instance: listofepi
InstanceOf: ListUvEpi
Usage: #example
Title: "Vulcan brand FHIR Package Insert List"
Description: "List of brand package inserts for Connectathon testing"

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "brandepi"

* status = #current

* mode = #working

* title = "List of all authorized brand ePIs"

* code = #epi

* date = "2018-06-23T08:38:00+02:00"

* orderedBy = #entry-date

* note
  * text = "no special notes for brand ePIs"

// Bundle v1
* entry[+].item = Reference(bundlepackageleaflet75)


