
Instance: humalog100units/mlkwikpensolutionforinjectioninapre-filledpen
InstanceOf: PackagedProductDefinitionUvEpi
Title: "Humalog 100 units/ml KwikPen solution for injection in a pre-filled pen"
Description: "Humalog 100 units/ml KwikPen solution for injection in a pre-filled pen"
Usage: #example
* id = "a4b9135b-3b33-42c0-8e12-b814645f8f20" 

* identifier.system = $spor-prod
* identifier.value = "EU/1/96/007/035"
* identifier.use = #official

* name = "Humalog 100 units/ml KwikPen solution for injection in a pre-filled pen"

* type = $spor-rms#100000155527 "Chemical Medicinal Prodcut"
//* type = $spor-rms#100000155527


* status = #active
* statusDate = "2015-02-07T13:28:17Z"


* containedItemQuantity = 3 'ml'

* packaging
  * identifier.system = $spor-prod
  * identifier.value = "123456"
  * type = $spor-rms#100000073543 "Pre-filled pen"
 // * type = $spor-rms#100000073496 "Blister"
  * quantity = 5
  * material = $spor-rms#200000003204 "Glass type 1"
  //* material = $spor-rms#200000003222 "PolyVinyl Chloride"

//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* packageFor = Reference(karvea75mgblisterx28)
* packageFor = Reference(HumalogMix50InsulinKwikPen,3mlpre-fill)

// * manufacturer = Reference(sanofiaventisgroupe)
 // Reference to Organization: MAH
* manufacturer = Reference(marketingauthorisationholder-elilillynederlandb.v.)
