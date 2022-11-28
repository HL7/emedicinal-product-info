
Instance: acmedrugblistertabs
InstanceOf: PackagedProductDefinitionUvEpi
Title: "acme drug blister tabs"
Description: "acme drug blister tabs"
Usage: #example
* id = "0a32589b-d8c9-4bd3-9b08-824a3648e006" 

* identifier.system = $spor-prod
* identifier.value = "EU/1/97/049/001"
* identifier.use = #official

* name = "acme drug blister tabs"

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
* packageFor = Reference(acmedrug-man)
 // Reference to Organization: MAH
* manufacturer = Reference(marketingauthorisationholder-acmeindustry-acmedrug)
