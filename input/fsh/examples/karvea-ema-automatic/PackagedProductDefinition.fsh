
Instance: ppd-a223062bf3faf7acb3e6e80760fa4e91
InstanceOf: PackagedProductDefinitionUvEpi
Title: "Karvea 75 mg tablet blister x28 tablets"
Description: "Karvea 75 mg tablet blister x28 tablets"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/97/049/001"
* identifier.use = #official

* name = "Karvea 75 mg tablet blister x28 tablets"

* type = $spor-rms#100000155527 "Chemical Medicinal Prodcut"
//* type = $spor-rms#100000155527


* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2015-02-07T13:28:17Z"


* containedItemQuantity = 75 'mg'





* packaging
  * identifier.system = $spor-prod
  * identifier.value = "123456"
  * type = $spor-rms#100000073496 "Blister"
  * quantity = 28
  * material = $spor-rms#200000003222 "PolyVinyl Chloride"



//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* packageFor = Reference(mpa2bd0171a7654dc24f7eb7e9338e1acc)
 // Reference to Organization: MAH
* manufacturer = Reference(org-fe4fee458a4f24fccb770d311350f67c)
