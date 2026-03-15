Instance: ListEpiExample
InstanceOf: ListUvEpi
Title: "Example List - ePI"
Description: "An example of a List resource conforming to the List-uv-epi profile."
Usage: #example

* identifier.system = "https://ema.europa.eu/fhir/list/identifier"
* identifier.value = "list-example-001"
* status = #current
* mode = #working
* title = "ePI List Example"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">ePI List Example</div>"

* code.coding[0].system = "http://hl7.org/fhir/list-example-use-codes"
* code.coding[0].code = #medications
* code.coding[0].display = "Medication List"

* date = "2026-03-15"

// subject needs to reference MedicinalProductDefinition
* subject[0] = Reference(medicinalproductdefinition-paracetamol)

// source needs to reference Organization
* source = Reference(organization-mah-paracetamol)

// entry needs to reference a Bundle
* entry[0].item = Reference(bundle-epi-type2-example-paracetamol)
