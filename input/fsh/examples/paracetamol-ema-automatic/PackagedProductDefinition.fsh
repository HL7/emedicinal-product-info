
Instance: ppd-parecatamoltabs
InstanceOf: PackagedProductDefinitionUvEpi
Title: "parecatamol tabs"
Description: "parecatamol tabs"
Usage: #example
* id = "57288a81-67b6-4aea-8ec7-147f0f770aaf" 

* identifier.system = $spor-prod
* identifier.value = "EU/1/97/049/001"
* identifier.use = #official

* name = "parecatamol tabs"

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
* packageFor = Reference(mpparecetamolamn)
 // Reference to Organization: MAH
* manufacturer = Reference(org-marketingauthorisationholder-acmeindustry-paracetamol)
