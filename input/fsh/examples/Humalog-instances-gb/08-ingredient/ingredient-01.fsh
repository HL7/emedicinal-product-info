Instance: c2613b44-2f13-4af2-b882-7fe7db8b013e
InstanceOf: Ingredient
Description: "Insulin Lispro"
Usage: #example

* identifier.system = "$src"
* identifier.value = "412210000"
* identifier.use = #official

* status = #active

* role = https://spor.ema.europa.eu/rmswi/#00000072072
* role.text = "active"

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#GFX7QIS1II "Insulin lispro"
* substance.strength.presentationQuantity.value = 100
* substance.strength.presentationQuantity.unit = "units/ml"

* substance.strength.basis = http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity#ACTIB
* substance.strength.basis.text = "active ingredient - basis of strength"

// Reference to Organization: Manufaturer API
* manufacturer.manufacturer = Reference(3cfc2347-44ef-448d-8929-7e06687d9473)
