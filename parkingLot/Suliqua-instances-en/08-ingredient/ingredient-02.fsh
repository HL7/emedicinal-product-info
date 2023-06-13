Instance: cfsb8724428384435
InstanceOf: Ingredient
Description: "Lixisenatide 50 ug/ml"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "74O62BB01U"
* identifier.use = #official

* status = #active

* role = https://spor.ema.europa.eu/rmswi/#/#00000072072


* allergenicIndicator = false
 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb2176224411725)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#74O62BB01U "Lixisenatide"
* substance.strength.presentationQuantity.value = 50
* substance.strength.presentationQuantity.unit = "ug/ml"

* substance.strength.basis = http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity#ACTIB
* substance.strength.basis.text = "active ingredient - basis of strength"