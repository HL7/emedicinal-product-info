Instance: listofepi
InstanceOf: ListUvEpi
Usage: #example
Title: "Vulcan Karvea FHIR Package Insert List"
Description: "List of Karvea package inserts for Connectathon testing"

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "karveaepi"

* status = #current

* mode = #working

* title = "List of all authorized Karvea ePIs"

* code = #epi

* date = "2018-06-23T08:38:00+02:00"

* orderedBy = #entry-date

* note
  * text = "no special notes for Karvea ePIs"

// Bundle v1
* entry[+].item = Reference(bundlepackageleaflet75)


