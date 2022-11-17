Instance: 28pack
InstanceOf: PackagedProductDefinitionUvEpi
Description: "28 tablets [14 tablets (PTP) x 2]"
Usage: #example

* identifier.system = "https://pmda-packinsertno/"
* identifier.value = "4291012F1022_4_02-001"
* identifier.use = #official

* name = "Aromasin (exemestane) Tablets 25 mg - 28 tablets [14 tablets (PTP) x 2]"

* type = $spor-rms#100000155527
* type.text = "Chemical Medininal Prodcut"

* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2002-08-01T13:28:17Z"

* containedItemQuantity.value = 25
* containedItemQuantity.unit = "mg"

* packaging
  * identifier.system = $spor-prod
  * identifier.value = "123456"
  * type = $spor-rms#100000073496 "Blister"
  * quantity = 28
  * material = $spor-rms#200000003222 "PolyVinyl Chloride"

//reference to MedicinalProductDefinition
* packageFor = Reference(medicinalproduct25mg)

 // Reference to Organization: MAH
* manufacturer = Reference(organizationmah)