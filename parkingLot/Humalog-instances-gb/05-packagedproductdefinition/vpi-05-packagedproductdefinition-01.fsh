Instance: 66455bf7-c6c4-429c-a856-a9a4eeea3183
InstanceOf: PackagedProductDefinition
Description: "5 pre-filled pens, 3 ml (3.5 mg/ml)"
Title: "5 pre-filled pens, 3 ml (3.5 mg/ml)"
Usage: #example

* identifier.system = "https://mhra.gov.uk/example/man"
* identifier.value = "PLGB 14895/0253"
* identifier.use = #official

* name = "Humalog 100 units/ml KwikPen solution for injection in a pre-filled pen"

* type = $sct#767102007
* type.text = "Chemical Medininal Prodcut"

* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2015-02-07T13:28:17Z"

* containedItemQuantity.value = 3
* containedItemQuantity.unit = "ml"

* package.type = $sct#3318611000001103
// * package.type = http://hl7.org/fhir/packaging-type/##100000073543

* package.type.text = "Pre-filled disposable injection"

* package.quantity = 5

* package.material = https://spor.ema.europa.eu/rmswi/##200000003204

* package.material.text = "Glass type 1"

//reference to EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* packageFor = Reference(6200a0a8-2fc1-46d4-aa66-2a98ac0cabc2)

 // Reference to Organization: Manufacturer
* manufacturer = Reference(4915c27b-b51a-4071-a031-71c5c5e52036)

 // Reference to Organization: Manufaturer API
* manufacturer[1] = Reference(3cfc2347-44ef-448d-8929-7e06687d9473)
