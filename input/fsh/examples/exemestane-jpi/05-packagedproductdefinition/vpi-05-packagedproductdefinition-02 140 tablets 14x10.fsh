Instance: 39307d03-7ff4-4c0d-9326-36de7beb7cad
InstanceOf: PackagedProductDefinitionUvEpi
Description: "140 tablets [14 tablets (PTP) x 10]"
Usage: #example

* identifier.system = "https://pmda-packinsertno/"
* identifier.value = "4291012F1022_4_02-002"
* identifier.use = #official

* name = "Aromasin (exemestane) Tablets 25 mg - 140 tablets [14 tablets (PTP) x 10]"

* type = $spor-rms#100000155527
* type.text = "Chemical Medininal Prodcut"

* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2002-08-01T13:28:17Z"

* containedItemQuantity.value = 140
* containedItemQuantity.unit = "tablet"

* package.identifier.system = $spor-prod
* package.identifier.value = "78910"
* package.type = $spor-rms#30007000 "Blister"
* package.quantity = 1
* package.material = $spor-rms#200000003222 "PolyVinyl Chloride"

//reference to Medicinal Product: 
* packageFor = Reference(117616c7-3bcc-4665-8e12-0e93447e679e)

 // Reference to Manufactured Item
* package.containedItem.item.reference = Reference(7460b712-82ad-4cce-a756-90b0fa04896c)

 // Reference to Organization: Manufacturer
* manufacturer = Reference(7f257409-3b65-401d-a246-7ae51e298fbb)