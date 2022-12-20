
Instance: ingredient-for-adalimumab-insulinglargine
InstanceOf: IngredientUvEpi
Title: "Ingredient-active Insulin glargine"
Description: "Insulin glargine"
Usage: #example

* id = "2e1e0304-d4de-4135-ab5d-72bb4859d2ca" 

* identifier.system = $ginas
* identifier.value = "2ZM8CX04RZ"
* identifier.use = #official

* role = $spor-rms#72072 "active"

* status = #active

* substance.code.concept.coding = $ginas#2ZM8CX04RZ "Insulin glargine"


* substance.strength.presentationQuantity = 100.0 'U/ml'

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB "active ingredient - basis of strength"


// Reference to manufactured item
* for = Reference(mid-adalimumab)
// Reference to Organization:  Reference to MAH

 
 
 
 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab)
Instance: ingredient-for-adalimumab-lixisenatide
InstanceOf: IngredientUvEpi
Title: "Ingredient-active Lixisenatide"
Description: "Lixisenatide"
Usage: #example

* id = "a48971df-c269-4bd7-af02-cdbc446fef40" 

* identifier.system = $ginas
* identifier.value = "74O62BB01U"
* identifier.use = #official

* role = $spor-rms#72072 "active"

* status = #active

* substance.code.concept.coding = $ginas#74O62BB01U "Lixisenatide"


* substance.strength.presentationQuantity = 50.0 'ug/ml'

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB "active ingredient - basis of strength"


// Reference to manufactured item
* for = Reference(mid-adalimumab)
// Reference to Organization:  Reference to MAH

 
 
 
 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab)
Instance: ingredient-for-adalimumab-glycerol85whodd
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient GLYCEROL 85% [WHO-DD]"
Description: "GLYCEROL 85% [WHO-DD]"
Usage: #example

* id = "313668a0-e923-48fe-ae04-49f8fcd5451e" 

* identifier.system = $ginas
* identifier.value = "PDC6A3C0OX"
* identifier.use = #official

* role = $spor-rms#100000072082 "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#PDC6A3C0OX "GLYCEROL 85% [WHO-DD]"



// Reference to manufactured item
* for = Reference(mid-adalimumab)
// Reference to Organization:  Reference to MAH

 
 
 
 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab)