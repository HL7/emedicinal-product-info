Instance: packagebottlex28
InstanceOf: PackagedProductDefinitionUvEpi
Title: "Packaging Blister x28 75 mg tablets"
Description: "Blister x28 tablets"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/97/049/001"
* identifier.use = #official

* name = "Karvea 75 mg tablet blister x28 tablets"

* type = $spor-rms#100000155527
* type.text = "Chemical Medicinal Prodcut"

* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2015-02-07T13:28:17Z"

* containedItemQuantity.value = 75
* containedItemQuantity.unit = "mg"

* packaging
  * identifier.system = $spor-prod
  * identifier.value = "123456"
  * type = $spor-rms#100000073496 "Blister"
  * quantity = 28
  * material = $spor-rms#200000003222 "PolyVinyl Chloride"

//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* packageFor = Reference(karvea75mgblisterx28)

 // Reference to Organization: MAH
* manufacturer = Reference(sanofiaventisgroupe)
