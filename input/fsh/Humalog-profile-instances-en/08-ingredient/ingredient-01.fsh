Instance: cfsb1640607635665
InstanceOf: Ingredient
Description: "Insulin Lispro"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "GFX7QIS1II"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#00000072072
* role.text = "active"

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#GFX7QIS1II "Insulin lispro"
* substance.strength.presentationQuantity.value = 100
* substance.strength.presentationQuantity.unit = "units/ml"

* substance.strength.basis = http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity#ACTIB
* substance.strength.basis.text = "active ingredient - basis of strength"


 // Reference to Organization: Manufaturer API
* manufacturer = Reference(cfsb1641381635293)
