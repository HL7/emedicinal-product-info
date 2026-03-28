Instance: ListEpiExample
InstanceOf: ListUvEpi
Title: "List Example"
Description: "An example of a List resource conforming to the List-uv-epi profile."
Usage: #example

* identifier.system = "https://ema.europa.eu/fhir/list/identifier"
* identifier.value = "list-example-001"
* status = #current
* mode = #working
* title = "ePI List Example"

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">ePI List Example</div>"

* code = epi-list-type-cs#medicinal-product "Medicinal Product"

* date = "2026-03-15"

// subject needs to reference MedicinalProductDefinition
* subject[0] = Reference(medicinalproductdefinition-paracetamol)

// source needs to reference Organization
* source = Reference(organization-mah-paracetamol)

// entry needs to reference a Bundle
* entry[0].date = "2026-03-27"
* entry[0].flag = epi-list-entry-flag-cs#smpc "Summary of Product Characteristics"
* entry[0].extension[language].valueCodeableConcept = urn:ietf:bcp:47#en "English"
* entry[0].item.identifier.system = "urn:ietf:rfc:3986"
* entry[0].item.identifier.value = "urn:uuid:2088b90a-1158-45ad-ac19-0f47e3a96887"
* entry[0].item.display = "SmPC Paracetamol"
