
Instance: karvea75mgtabletblisterx28tablets
InstanceOf: PackagedProductDefinitionUvEpi
Title: "Karvea 75 mg tablet blister x28 tablets"
Description: "Karvea 75 mg tablet blister x28 tablets"
Usage: #example
* id = "ecb515bf-4e5d-404e-8993-4d9780f67cf7" 

* identifier.system = $spor-prod
* identifier.value = "EU/1/97/049/001"
* identifier.use = #official

* name = "Karvea 75 mg tablet blister x28 tablets"

* type = $spor-rms#100000155527 "Chemical Medicinal Prodcut"
//* type = $spor-rms#100000155527


* status = #active
* statusDate = "2015-02-07T13:28:17Z"


* containedItemQuantity = 75 'mg'

* packaging
  * identifier.system = $spor-prod
  * identifier.value = "123456"
  * type = $spor-rms#100000073496 "Blister"
 // * type = $spor-rms#100000073496 "Blister"
  * quantity = 28
  * material = $spor-rms#200000003222 "PolyVinyl Chloride"
  //* material = $spor-rms#200000003222 "PolyVinyl Chloride"

//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* packageFor = Reference(karvea75mgblisterx28)
* packageFor = Reference(Karvea75mgtabletblisterx28)

// * manufacturer = Reference(sanofiaventisgroupe)
 // Reference to Organization: MAH
* manufacturer = Reference(sanofi-aventisgroupe)
