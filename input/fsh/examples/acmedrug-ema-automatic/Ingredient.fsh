
Instance: ingredient-for-acmedrug-acmedrug-ing3
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient acmedrug-ing3"
Description: "acmedrug-ing3"
Usage: #example

* id = "2253beea-3b62-4bd6-b1ca-810b178a8c76" 

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

* id = "32cbe673-db54-4e01-ad15-9ec5af4d4f8d" 

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

* id = "4d2d647b-3992-47c3-9dc9-c54d11ca104f" 

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