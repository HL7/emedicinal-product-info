Instance: cfsb6320144064544
InstanceOf: Ingredient
Description: "Insulin Lispro"
Usage: #example

* identifier.system = $ginas
* identifier.value = "GFX7QIS1II"
* identifier.use = #official

* status = #active

* role = $spor-rms#00000072072
* role.text = "active"

* substance.code.concept.coding = $ginas#GFX7QIS1II "Insulin lispro"
* substance.strength.presentationQuantity.value = 100
* substance.strength.presentationQuantity.unit = "units/ml"

* substance.strength.basis = http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity#ACTIB
* substance.strength.basis.text = "active ingredient - basis of strength"

// Reference to Organization: Manufaturer API
* manufacturer.manufacturer = Reference(cfsb1950833461423)
