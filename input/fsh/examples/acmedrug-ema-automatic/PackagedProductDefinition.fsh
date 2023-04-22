
Instance: ppd-8799ff87933460485b763ad9b52f8276
InstanceOf: PackagedProductDefinitionUvEpi
Title: "acme drug blister tabs"
Description: "acme drug blister tabs"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/97/049/001"
* identifier.use = #official

* name = "acme drug blister tabs"

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
* packageFor = Reference(mp534e209eb0a3ff60437639cb2015316f)
 // Reference to Organization: MAH
* manufacturer = Reference(org-2aff7154a8d952c895e8a03849a25108)
