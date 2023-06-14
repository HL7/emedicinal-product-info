Instance: 140pack
InstanceOf: PackagedProductDefinitionUvEpi
Description: "140 tablets [14 tablets (PTP) x 10]"
Usage: #example

* identifier.system = "https://pmda-packinsertno/"
* identifier.value = "4291012F1022_4_02-002"
* identifier.use = #official

* name = "Aromasin (exemestane) Tablets 25 mg - 140 tablets [14 tablets (PTP) x 10]"

* type = $spor-rms#100000155527
* type.text = "Chemical Medininal Prodcut"

* status = $publication-status#active "Active"
* statusDate = "2002-08-01T13:28:17Z"

* containedItemQuantity.value = 25
* containedItemQuantity.unit = "mg"

* packaging
  * identifier.system = $example-prod
  * identifier.value = "123456"
  * type = $medicinal-product-package-type#100000073496 "Blister"
  * quantity = 28
  * material = $package-material#200000003222 "PolyVinyl Chloride"

//reference to MedicinalProductDefinition
* packageFor = Reference(medicinalproduct25mg)

 // Reference to Organization: MAH
* manufacturer = Reference(organizationmah)