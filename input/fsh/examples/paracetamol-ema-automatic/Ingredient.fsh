
Instance: ingredient-for-paracetamol-qqq
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient qqq"
Description: "qqq"
Usage: #example

* id = "822117f8-0d40-4881-af02-bed6ce919010" 

* identifier.system = $ginas
* identifier.value = "ETJ7Z6XBU4"
* identifier.use = #official

* role = $spor-rms#100000072082 "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#ETJ7Z6XBU4 "qqq"



// Reference to manufactured item
* for = Reference(mid-paracetamol)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-acmeindustry-paracetamol)
Instance: ingredient-for-paracetamol-www
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient www"
Description: "www"
Usage: #example

* id = "4edd8155-99ed-4c22-b6aa-d696558531b5" 

* identifier.system = $ginas
* identifier.value = "15FIX9V2JP"
* identifier.use = #official

* role = $spor-rms#100000072082 "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#15FIX9V2JP "www"



// Reference to manufactured item
* for = Reference(mid-paracetamol)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-acmeindustry-paracetamol)
Instance: ingredient-for-paracetamol-paracetamol
InstanceOf: IngredientUvEpi
Title: "Ingredient-active paracetamol"
Description: "paracetamol"
Usage: #example

* id = "9b936a6a-a403-4ceb-b71f-f2d2354a9d24" 

* identifier.system = $ginas
* identifier.value = "J0E2756Z7N"
* identifier.use = #official

* role = $spor-rms#72072 "active"

* status = #active

* substance.code.concept.coding = $ginas#J0E2756Z7N "paracetamol"


* substance.strength.presentationQuantity = 75.0 'mg'

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB "active ingredient - basis of strength "


// Reference to manufactured item
* for = Reference(mid-paracetamol)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-acmeindustry-paracetamol)