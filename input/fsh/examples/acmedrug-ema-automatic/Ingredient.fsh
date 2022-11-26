
Instance: ingredient-for-acmedrug-acmedrug-ing3
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient acmedrug-ing3"
Description: "acmedrug-ing3"
Usage: #example

* id = "ce7e3ed2-ea4c-45af-bcd8-abdefd82e517" 

* identifier.system = $ginas
* identifier.value = "ETJ7Z6XBU4"
* identifier.use = #official

* role = $spor-rms#100000072082 "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#ETJ7Z6XBU4 "acmedrug-ing3"



// Reference to manufactured item
* for = Reference(acmedrugman)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(marketingauthorisationholder-acmeindustry)
Instance: ingredient-for-acmedrug-acmedrug-ing2
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient acmedrug-ing2"
Description: "acmedrug-ing2"
Usage: #example

* id = "cb01f7d2-7208-47e5-96b3-af3b713bb6d3" 

* identifier.system = $ginas
* identifier.value = "15FIX9V2JP"
* identifier.use = #official

* role = $spor-rms#100000072082 "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#15FIX9V2JP "acmedrug-ing2"



// Reference to manufactured item
* for = Reference(acmedrugman)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(marketingauthorisationholder-acmeindustry)
Instance: ingredient-for-acmedrug-acmedrug-ing1
InstanceOf: IngredientUvEpi
Title: "Ingredient-active acmedrug-ing1"
Description: "acmedrug-ing1"
Usage: #example

* id = "50fc0917-4077-4011-a4f3-4c56a527d722" 

* identifier.system = $ginas
* identifier.value = "J0E2756Z7N"
* identifier.use = #official

* role = $spor-rms#72072 "active"

* status = #active

* substance.code.concept.coding = $ginas#J0E2756Z7N "acmedrug-ing1"


* substance.strength.presentationQuantity = 75.0 'mg'

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB "active ingredient - basis of strength "


// Reference to manufactured item
* for = Reference(acmedrugman)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(marketingauthorisationholder-acmeindustry)