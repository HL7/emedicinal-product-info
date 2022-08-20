Instance: cfsb2466848736985
InstanceOf: PackagedProductDefinition
Description: "5 pre-filled pens, 3 ml (3.5 mg/ml)"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/96/007/035"
* identifier.use = #official

* name = "Humalog 100 units/ml KwikPen solution for injection in a pre-filled pen"

* type = $spor-rms#100000155527
* type.text = "Chemical Medicinal Prodcut"

* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2015-02-07T13:28:17Z"

* containedItemQuantity.value = 3
* containedItemQuantity.unit = "ml"

* package.identifier.system = $spor-prod
* package.identifier.value = "123456"
* package.type = $spor-rms#100000073543 "Pre-filled pen"
* package.quantity = 5
* package.material = $spor-rms#200000003204 "Glass type 1"

//reference to MedicinalProductDefinition: EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* packageFor = Reference(cfsb7543491765740)

 // Reference to Organization: Manufacturer
* manufacturer = Reference(cfsb8820228934589)

 // Reference to Organization: Manufaturer API
* manufacturer[1] = Reference(cfsb1950833461423)
