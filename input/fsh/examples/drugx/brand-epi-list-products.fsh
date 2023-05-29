Instance: listofproducts
InstanceOf: List
Usage: #example
Title: "Vulcan DrugX FHIR Package Insert List"
Description: "List of DrugX package inserts for Connectathon testing"

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "DrugX"

* status = #current

* mode = #working

* title = "List of all authorized DrugX presentations"

* code = #worklist // correct this code system

* date = "2018-06-23T08:38:00+02:00"

* orderedBy = #entry-date

* note
  * text = "no special notes for DrugX tablets"

// medicinal product #1 75 mg tablet
* entry
  * flag = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct
  * date = "2018-06-23T08:38:00+02:00"
  * item = Reference(DrugX75mgblisterx28)


