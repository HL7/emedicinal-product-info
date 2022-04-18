Instance: cfsb1640781499340
InstanceOf: PackagedProductDefinition
Description: "28 tablets [14 tablets (PTP) x 2]"
Usage: #example

* identifier.system = "https://pmda-packinsertno/"
* identifier.value = "4291012F1022_4_02-002"
* identifier.use = #official

* name = "Aromasin (exemestane) Tablets 25 mg - 28 tablets [14 tablets (PTP) x 2]"

* type = https://spor.ema.europa.eu/rmswi/#/#100000155527
* type.text = "Chemical Medininal Prodcut"

* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2002-08-01T13:28:17Z"

* containedItemQuantity.value = 28
* containedItemQuantity.unit = "tablet"


* package.type = https://standardterms.edqm.eu/browse/get_concepts_by/PAC/PAC/#30007000

* package.type.text = "Blister"

* package.quantity = 1

* package.material = https://spor.ema.europa.eu/rmswi/#/#200000003222

* package.material.text = "PolyVinyl Chloride"

 // Reference to Manufactured Item
* package.containedItem.item.reference = Reference(cfsb1640777487408)

//reference to Medicinal Product: 
* packageFor = Reference(cfsb1641212233583)
