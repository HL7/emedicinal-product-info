
Instance: ppd-cinitrapide
InstanceOf: PackagedProductDefinitionUvEpi
Title: "cinitrapide"
Description: "cinitrapide"
Usage: #example
* id = "2b99303d-bf3e-4fb6-b2b5-dea1ae711ca3" 

* identifier.system = $spor-prod
* identifier.value = "EU/1/97/049/001"
* identifier.use = #official

* name = "cinitrapide"

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
* packageFor = Reference(mpcinitrapide)
 // Reference to Organization: MAH
* manufacturer = Reference(org-marketingauthorisationholder-acmeindustry-cinitrapide)
