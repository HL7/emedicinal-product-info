Instance: 39151aef-f61a-40cb-86fc-d0e556fa07ef
InstanceOf: PackagedProductDefinitionUvEpi
Description: "30 in 1 BOTTLE; Type 0: Not a Combination Product"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "NDC:0009-7663-04"
* identifier.use = #official

* name = "Aromasin (exemestane) Tablets 25 mg - 28 tablets [14 tablets (PTP) x 2]"

* type = $spor-rms#100000155527
* type.text = "Chemical Medininal Prodcut"

* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2002-08-01T13:28:17Z"

* containedItemQuantity.value = 30
* containedItemQuantity.unit = "tablet"

* package.identifier.system = $spor-prod
* package.identifier.value = "0009-7663-04"
* package.type = $spor-rms#100000073497 "Bottle"
* package.quantity = 1
* package.material = $spor-rms#200000003215 "High Density PolyEthylene"

//reference to Medicinal Product: 
* packageFor = Reference(f1b25777-da7a-4a35-98af-ab18d3246d54)

 // Reference to Manufactured Item
* package.containedItem.item.reference = Reference(23fed712-2d60-461d-83a6-5fb939b2a939)

 // Reference to Organization: Manufacturer
* manufacturer = Reference(85c5d81e-9d5a-4a15-8b9d-42bbbe0409c8)