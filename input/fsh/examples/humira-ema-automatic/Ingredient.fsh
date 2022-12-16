
Instance: ingredient-for-humira-mannitol
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Mannitol"
Description: "Mannitol"
Usage: #example

* id = "27a9bf77-3521-4928-855d-c71d492ea11b" 

* identifier.system = $ginas
* identifier.value = "3OWL53L36A"
* identifier.use = #official

* role = $spor-rms#100000072082 "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#3OWL53L36A "Mannitol"



// Reference to manufactured item
* for = Reference(mid-humira20mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-abbviedeutschlandgmbhcokg-humira)
Instance: ingredient-for-humira-polysorbate80
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Polysorbate 80"
Description: "Polysorbate 80"
Usage: #example

* id = "602fc486-24f0-4295-b214-a8bc160c8aeb" 

* identifier.system = $ginas
* identifier.value = "6OZP39ZG8H"
* identifier.use = #official

* role = $spor-rms#100000072082 "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#6OZP39ZG8H "Polysorbate 80"



// Reference to manufactured item
* for = Reference(mid-humira20mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-abbviedeutschlandgmbhcokg-humira)
Instance: ingredient-for-humira-adalimumab
InstanceOf: IngredientUvEpi
Title: "Ingredient-active adalimumab"
Description: "adalimumab"
Usage: #example

* id = "e8b7cfcd-e36e-4711-a8d8-a3de88263718" 

* identifier.system = $ginas
* identifier.value = "FYS6T7F842"
* identifier.use = #official

* role = $spor-rms#72072 "active"

* status = #active

* substance.code.concept.coding = $ginas#FYS6T7F842 "adalimumab"


* substance.strength.presentationQuantity = 20.0 'mg'

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB "active ingredient - basis of strength "


// Reference to manufactured item
* for = Reference(mid-humira20mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-abbviedeutschlandgmbhcokg-humira)
Instance: ingredient-for-humira-waterforinjections
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Water for injections"
Description: "Water for injections"
Usage: #example

* id = "6d8392ff-76b3-4225-8581-cdcc00445100" 

* identifier.system = $ginas
* identifier.value = "059QF0KO0R"
* identifier.use = #official

* role = $spor-rms#100000072082 "Excipient"

* status = #nan

* substance.code.concept.coding = $ginas#059QF0KO0R "Water for injections"



// Reference to manufactured item
* for = Reference(mid-humira20mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-abbviedeutschlandgmbhcokg-humira)