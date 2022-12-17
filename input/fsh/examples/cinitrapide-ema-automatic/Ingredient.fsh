
Instance: ingredient-for-cinitrapide-xxx
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient xxx"
Description: "xxx"
Usage: #example

* id = "c8349042-b2e8-4971-b8ca-0eb2ea4f1f0e" 

* identifier.system = $ginas
* identifier.value = "ETJ7Z6XBU4"
* identifier.use = #official

* role = $spor-rms#100000072082 "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#ETJ7Z6XBU4 "xxx"



// Reference to manufactured item
* for = Reference(mid-cinitrapide)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-acmeindustry-cinitrapide)
Instance: ingredient-for-cinitrapide-xx
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient xx"
Description: "xx"
Usage: #example

* id = "22fa09ff-515f-40db-8841-583a2f1e1405" 

* identifier.system = $ginas
* identifier.value = "15FIX9V2JP"
* identifier.use = #official

* role = $spor-rms#100000072082 "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#15FIX9V2JP "xx"



// Reference to manufactured item
* for = Reference(mid-cinitrapide)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-acmeindustry-cinitrapide)
Instance: ingredient-for-cinitrapide-cinitrapide
InstanceOf: IngredientUvEpi
Title: "Ingredient-active cinitrapide"
Description: "cinitrapide"
Usage: #example

* id = "0d4cda05-3cb0-402c-bda7-49db898be33b" 

* identifier.system = $ginas
* identifier.value = "J0E2756Z7N"
* identifier.use = #official

* role = $spor-rms#72072 "active"

* status = #active

* substance.code.concept.coding = $ginas#J0E2756Z7N "cinitrapide"


* substance.strength.presentationQuantity = 75.0 'mg'

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB "active ingredient - basis of strength "


// Reference to manufactured item
* for = Reference(mid-cinitrapide)
// Reference to Organization:  Reference to MAH

 


* manufacturer.manufacturer = Reference(org-marketingauthorisationholder-acmeindustry-cinitrapide)