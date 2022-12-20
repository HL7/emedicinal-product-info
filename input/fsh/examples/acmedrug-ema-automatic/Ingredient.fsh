
Instance: ingredient-for-acmedrug-acmedruging3
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient acmedrug-ing3"
Description: "acmedrug-ing3"
Usage: #example

* id = "72dd2f93-95bf-4f6b-8d0c-e424a6109842" 

* identifier.system = $ginas
* identifier.value = "ETJ7Z6XBU4"
* identifier.use = #official

* role = $spor-rms#100000072082 "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#ETJ7Z6XBU4 "acmedrug-ing3"



// Reference to manufactured item
* for = Reference(mid-acmedrugman)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-acmeindustry-acmedrug)
Instance: ingredient-for-acmedrug-acmedruging2
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient acmedrug-ing2"
Description: "acmedrug-ing2"
Usage: #example

* id = "1f11328b-abe0-44b4-b9a2-52b998d8519c" 

* identifier.system = $ginas
* identifier.value = "15FIX9V2JP"
* identifier.use = #official

* role = $spor-rms#100000072082 "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#15FIX9V2JP "acmedrug-ing2"



// Reference to manufactured item
* for = Reference(mid-acmedrugman)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-acmeindustry-acmedrug)
Instance: ingredient-for-acmedrug-acmedruging1
InstanceOf: IngredientUvEpi
Title: "Ingredient-active acmedrug-ing1"
Description: "acmedrug-ing1"
Usage: #example

* id = "347ec94f-d230-46b1-89af-5491f8b76279" 

* identifier.system = $ginas
* identifier.value = "J0E2756Z7N"
* identifier.use = #official

* role = $spor-rms#72072 "active"

* status = #active

* substance.code.concept.coding = $ginas#J0E2756Z7N "acmedrug-ing1"


* substance.strength.presentationQuantity = 75.0 'mg'

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB "active ingredient - basis of strength"


// Reference to manufactured item
* for = Reference(mid-acmedrugman)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-acmeindustry-acmedrug)