Instance: cfsb1640781499340
InstanceOf: PackagedProductDefinition
Description: "5 pre-filled pens, 3 ml (3.5 mg/ml)"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "EU/1/96/007/035"
* identifier.use = #official

* name = "Humalog 100 units/ml KwikPen solution for injection in a pre-filled pen"

* type = $spor-rms#100000155527
* type.text = "Chemical Medininal Prodcut"

* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2015-02-07T13:28:17Z"

* containedItemQuantity.value = 3
* containedItemQuantity.unit = "ml"

* package.type = https://spor.ema.europa.eu/rmswi/##100000073543

* package.type.text = "Pre-filled pen"

* package.quantity = 5

* package.material = https://spor.ema.europa.eu/rmswi/##200000003204

* package.material.text = "Glass type 1"

//reference to EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* packageFor = Reference(cfsb1641212233583)

 // Reference to Organization: Manufacturer
* manufacturer = Reference(cfsb1640870328895)

 // Reference to Organization: Manufaturer API
* manufacturer[1] = Reference(cfsb1641381635293)
