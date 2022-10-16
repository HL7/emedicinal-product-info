Instance: listofKarveaEpiDocuments
InstanceOf: ListUvEpi
Title: "List of Karvea ePI documents"
Description: "List of Karvea ePI documents"
Usage: #example

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "karvea"

* status = #current

* mode = #working

* title = "List of all authorized Karvea ePI documents"

* code = #worklist

* date = "2018-06-23T08:38:00+02:00"

* orderedBy = #entry-date

* note
  * text = "no special notes for Karvea tablets"

// medicinal product #1 75 mg tablet
* entry
  * flag = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct
  * date = "2018-06-23T08:38:00+02:00"
  * item = Reference(bundlepackageleaflet75) // Reference to the karvea 75mg package leaflet bundle


