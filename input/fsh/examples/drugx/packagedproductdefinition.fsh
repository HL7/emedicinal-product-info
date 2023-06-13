Instance: packagebottlex28
InstanceOf: PackagedProductDefinitionUvEpi
Title: "Packaging - Blister"
Description: "Blister x28 tablets"
Usage: #example

* id = "eb8392a6-2cec-4ff3-9d9e-7c5f4ae3786d"

* identifier.system = $spor-prod
* identifier.value = "EU/1/97/049/001"
* identifier.use = #official

* name = "DrugX 75 mg tablet blister x28 tablets"

* type = EmaSporProductCategory#100000155527 "Chemical Medicinal Prodcut"

* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2018-06-23T08:38:00+02:00"

* containedItemQuantity.value = 75
* containedItemQuantity.unit = "mg"

* packaging
  * identifier.system = $spor-prod
  * identifier.value = "123456"
  * type = EmaSporPackaging#100000073496 "Blister"
  * quantity = 28
  * material = EmaSporMaterial#200000003222 "PolyVinyl Chloride"

//reference to MedicinalProductDefinition: EU/1/97/049/001 DrugX 75 mg tablet
* packageFor = Reference(DrugX75mgblisterx28)

 // Reference to Organization: MAH
* manufacturer = Reference(acmeinc)
