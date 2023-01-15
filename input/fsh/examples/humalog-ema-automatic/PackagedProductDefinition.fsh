
Instance: ppd-humalog100unitsmlkwikpensolutionforinjectioninaprefilledpen
InstanceOf: PackagedProductDefinitionUvEpi
Title: "Humalog 100 units/ml KwikPen solution for injection in a pre-filled pen"
Description: "Humalog 100 units/ml KwikPen solution for injection in a pre-filled pen"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/96/007/035"
* identifier.use = #official

* name = "Humalog 100 units/ml KwikPen solution for injection in a pre-filled pen"

* type = $spor-rms#100000155527 "Chemical Medicinal Prodcut"
//* type = $spor-rms#100000155527


* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2015-02-07T13:28:17Z"


* containedItemQuantity = 3 'ml'





* packaging
  * identifier.system = $spor-prod
  * identifier.value = "123456"
  * type = $spor-rms#100000073543 "Pre-filled pen"
  * quantity = 5
  * material = $spor-rms#200000003204 "Glass type 1"



//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* packageFor = Reference(mpHumalogMix50InsulinKwikPen3mlprefill)
 // Reference to Organization: MAH
* manufacturer = Reference(org-3fdc76794516d7826890ab9f893e99c1)
