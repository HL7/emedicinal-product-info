
Instance: ppd-blaston1mgtablets50tablets
InstanceOf: PackagedProductDefinitionUvEpi
Title: "BLASTON 1 mg tablets, 50 tablets"
Description: "BLASTON 1 mg tablets, 50 tablets"
Usage: #example
* id = "210b7844-d4ea-4d5d-b317-e0b7c185e5df" 

* identifier.system = $spor-prod
* identifier.value = "ss"
* identifier.use = #official

* name = "BLASTON 1 mg tablets, 50 tablets"

* type = $spor-rms#100000155527 "Chemical Medicinal Prodcut"
//* type = $spor-rms#100000155527


* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2015-02-07T13:28:17Z"


* containedItemQuantity = 1 'mg'





* packaging
  * identifier.system = $spor-prod
  * identifier.value = "123456"
  * type = $spor-rms#100000073496 "Blister"
  * quantity = 50
  * material = $spor-rms#200000003222 "PolyVinyl Chloride"



//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* packageFor = Reference(mpBLASTON1mgtablets)
 // Reference to Organization: MAH
* manufacturer = Reference(org-marketingauthorisationholder-lacersaboters5-cinitrapide)