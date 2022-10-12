Instance: listofproducts
InstanceOf: List
Usage: #example
Title: "Vulcan Karvea FHIR Package Insert List"
Description: "List of Karvea package inserts for Connectathon testing"

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "karvea"

* status = #current

* mode = #working

* title = "List of all authorized Karvea presentations"

* code = http://hl7.org/fhir/ValueSet/list-example-codes/#worklist

* date = "2018-06-23T08:38:00+02:00"

* orderedBy = #entry-date

* note
  * text = "no special notes for Karvea tablets"

// medicinal product #1 75 mg tablet
* entry
  * flag = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct
  * date = "2018-06-23T08:38:00+02:00"
  * item = Reference(karvea75mgblisterx28)


