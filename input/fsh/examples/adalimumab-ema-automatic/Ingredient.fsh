
Instance: ingredient-for-adalimumab-insulinglargine
InstanceOf: IngredientUvEpi
Title: "Ingredient-active Insulin glargine"
Description: "Insulin glargine"
Usage: #example

* id = "f5eba89a-53bf-41cc-a00f-a81330062946" 

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

* id = "34734d5b-c7cf-4a3e-bf87-1412db87476e" 

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
Instance: ingredient-for-adalimumab-glycerol85
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Glycerol 85%"
Description: "Glycerol 85%"
Usage: #example

* id = "06d11577-dc08-4fe4-b9f3-3b98f8e4159b" 

* identifier.system = $ginas
* identifier.value = "PDC6A3C0OX"
* identifier.use = #official

* role = $spor-rms#100000072082 "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#PDC6A3C0OX "Glycerol 85%"



// Reference to manufactured item
* for = Reference(mid-adalimumab)
// Reference to Organization:  Reference to MAH

 
 
 
 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab)