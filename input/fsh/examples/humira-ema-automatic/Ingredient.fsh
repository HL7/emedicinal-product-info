
Instance: ingredient-for-humira-mannitol
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Mannitol"
Description: "Mannitol"
Usage: #example

* id = "07c746e5-ca65-4646-b4af-48a23d454f30" 

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

* id = "024196e7-a36f-4b63-ac35-af98ed3e67f6" 

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

* id = "7e6a312d-e0c2-4d0d-b3c0-9e337d9627fa" 

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

* id = "9ad9a0f3-8244-4aee-809b-16a8490cd837" 

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