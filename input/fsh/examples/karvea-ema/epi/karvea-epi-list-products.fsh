Instance: listofKarveaProducts
InstanceOf: ListUvProduct
Title: "List of Karvea medicinal products"
Description: "List of medicinal products"
Usage: #example

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "karvea"

* status = #current

* mode = #working

* title = "List of all authorized Karvea medicinal products"

* code = #worklist

* date = "2018-06-23T08:38:00+02:00"

* orderedBy = #entry-date

* note
  * text = "no special notes for Karvea tablets"

// medicinal product #1 75 mg tablet
* entry
  * flag = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct
  * date = "2018-06-23T08:38:00+02:00"
  * item = Reference(karvea75mgblisterx28) // Reference to the karvea 75mg package medicinal product


