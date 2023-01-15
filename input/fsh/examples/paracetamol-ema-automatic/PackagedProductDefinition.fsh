
Instance: ppd-1fba151ccf2a68d419f373375e997036
InstanceOf: PackagedProductDefinitionUvEpi
Title: "DOLOCATIL 1 g tablets, 20 tablets"
Description: "DOLOCATIL 1 g tablets, 20 tablets"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "672669"
* identifier.use = #official

* name = "DOLOCATIL 1 g tablets, 20 tablets"

* type = $spor-rms#100000155527 "Chemical Medicinal Prodcut"
//* type = $spor-rms#100000155527


* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2010-10-13"


* containedItemQuantity = 1000 'mg'





* packaging
  * identifier.system = $spor-prod
  * identifier.value = "123456"
  * type = $spor-rms#100000073496 "Blister"
  * quantity = 20
  * material = $spor-rms#200000003222 "PolyVinyl Chloride"



//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* packageFor = Reference(mpa975b7e209ea5c4c3bf8040a42b86fbd)
 // Reference to Organization: MAH
* manufacturer = Reference(org-65db33d6be47a433e6e9e9c2980ea7a4)
