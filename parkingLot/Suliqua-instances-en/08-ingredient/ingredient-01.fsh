Instance: cfsb3768802370375
InstanceOf: Ingredient
Description: "Insulin glargine 100 units/ml"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "2ZM8CX04RZ"
* identifier.use = #official

* status = #active

* role = https://spor.ema.europa.eu/rmswi/#/#00000072072


* allergenicIndicator = false
 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb2176224411725)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#2ZM8CX04RZ "Insulin glargine"
* substance.strength.presentationQuantity.value = 100
* substance.strength.presentationQuantity.unit = "units/ml"

* substance.strength.basis = http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity#ACTIB
* substance.strength.basis.text = "active ingredient - basis of strength"