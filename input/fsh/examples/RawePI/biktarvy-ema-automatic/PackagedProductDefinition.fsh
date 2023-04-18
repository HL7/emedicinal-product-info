
Instance: ppd-bb925abf9dc1f2dd024210a50c0ee14b
InstanceOf: PackagedProductDefinitionUvEpi
Title: "Biktarvy 50 mg/200 mg/25 mg film-coated tablets 90 (3 bottles of 30) film-coated tablets"
Description: "Biktarvy 50 mg/200 mg/25 mg film-coated tablets 90 (3 bottles of 30) film-coated tablets"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/18/1289/001"
* identifier.use = #official

* name = "Biktarvy 50 mg/200 mg/25 mg film-coated tablets 90 (3 bottles of 30) film-coated tablets"

* type = $spor-rms#100000155527 "Chemical Medicinal Prodcut"
//* type = $spor-rms#100000155527


* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2012-02-07T13:28:17Z"


* containedItemQuantity = 90 'tablets'





* packaging
  * identifier.system = $spor-prod
  * identifier.value = "654321"
  * type = $spor-rms#100000073504 "Child-resistant closure"
  * quantity = 1
  * material = $spor-rms#200000003529 "Cardboard"



//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* packageFor = Reference(mp5fb1761a0a38bea0a9b49f146371c68b)
 // Reference to Organization: MAH
* manufacturer = Reference(org-715f8a161ed438d0584510e5b4512caa)
