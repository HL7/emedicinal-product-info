
Instance: ingredient-for-acmedrug-acmedruging3
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient acmedrug-ing3"
Description: "acmedrug-ing3"
Usage: #example

* id = "3a54fdc9-67dc-416a-9eb2-60a3047958e2" 

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

* id = "a1f0de5b-a07a-4011-b7b1-e1f10db89684" 

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

* id = "400d4ca6-7538-4dca-8233-2d5a52610c01" 

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