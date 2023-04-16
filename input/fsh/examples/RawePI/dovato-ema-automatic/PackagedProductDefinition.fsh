
Instance: ppd-23f4e5c6d9ca952c3ffb3940859a26f8
InstanceOf: PackagedProductDefinitionUvEpi
Title: "50 mg/300 mg film-coated tablets"
Description: "50 mg/300 mg film-coated tablets"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/19/1370/001"
* identifier.use = #official

* name = "50 mg/300 mg film-coated tablets"

* type = $spor-rms#100000155527 "Chemical Medicinal Prodcut"
//* type = $spor-rms#100000155527


* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2012-02-07T13:28:17Z"


* containedItemQuantity = 30 'tablets'





* packaging
  * identifier.system = $spor-prod
  * identifier.value = "654321"
  * type = $spor-rms#100000073504 "Child-resistant closure"
  * quantity = 1
  * material = $spor-rms#200000003529 "Cardboard"



//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* packageFor = Reference(mp16598f252d07b4784b82ba43cf9e847e)
 // Reference to Organization: MAH
* manufacturer = Reference(org-173fde4cb6b1018cb7ec8ab708d3961c)
