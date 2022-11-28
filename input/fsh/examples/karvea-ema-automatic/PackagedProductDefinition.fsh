
Instance: ppd-karvea75mgtabletblisterx28tablets
InstanceOf: PackagedProductDefinitionUvEpi
Title: "Karvea 75 mg tablet blister x28 tablets"
Description: "Karvea 75 mg tablet blister x28 tablets"
Usage: #example
* id = "9922ec3a-ba89-4582-9c40-0f5cc0ca1401" 

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
  * quantity = 28
  * material = $spor-rms#200000003222 "PolyVinyl Chloride"
//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* packageFor = Reference(mpKarvea75mgtabletblisterx28)
 // Reference to Organization: MAH
* manufacturer = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-karvea)
