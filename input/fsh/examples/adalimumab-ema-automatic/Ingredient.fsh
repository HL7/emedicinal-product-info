
Instance: ingredient-for-adalimumab-insulinglargine
InstanceOf: IngredientUvEpi
Title: "Ingredient-active Insulin glargine"
Description: "Insulin glargine"
Usage: #example

* id = "232fc4f7-c6a4-424f-ac7d-ecf8bce81b7d" 

* identifier.system = $ginas
* identifier.value = "2ZM8CX04RZ"
* identifier.use = #official

* role = $spor-rms#72072 "active"

* status = #active

* substance.code.concept.coding = $ginas#2ZM8CX04RZ "Insulin glargine"


* substance.strength.presentationQuantity = 100.0 'U/ml'

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB "active ingredient - basis of strength "


// Reference to manufactured item
* for = Reference(mid-adalimumab)
// Reference to Organization:  Reference to MAH

 
 
 
 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab)
Instance: ingredient-for-adalimumab-lixisenatide
InstanceOf: IngredientUvEpi
Title: "Ingredient-active Lixisenatide"
Description: "Lixisenatide"
Usage: #example

* id = "a39ad161-9a77-4132-a7ef-be4494b3cf88" 

* identifier.system = $ginas
* identifier.value = "74O62BB01U"
* identifier.use = #official

* role = $spor-rms#72072 "active"

* status = #active

* substance.code.concept.coding = $ginas#74O62BB01U "Lixisenatide"


* substance.strength.presentationQuantity = 50.0 'ug/ml'

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB "active ingredient - basis of strength "


// Reference to manufactured item
* for = Reference(mid-adalimumab)
// Reference to Organization:  Reference to MAH

 
 
 
 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab)
Instance: ingredient-for-adalimumab-glycerol85
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Glycerol 85%"
Description: "Glycerol 85%"
Usage: #example

* id = "a8f55f17-a3ea-467e-a0f9-d81e994f9f9a" 

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