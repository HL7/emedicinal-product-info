Instance: cfsb1639018789432
InstanceOf: Ingredient
Description: "dimethyl fumarate 120 mg"
Usage: #example
 
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "FO2303MNI2"
* identifier.use = #official

* status = #active

* role = https://spor.ema.europa.eu/rmswi/#/#00000072072
* role.text = "active"

* allergenicIndicator = false
 // Reference to Organization: Manufacturer
* manufacturer = Reference(cfsb1639015344307)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#FO2303MNI2 "dimethyl fumarate"
* substance.strength.presentationQuantity.value = 120
* substance.strength.presentationQuantity.unit = "mg"

* substance.strength.basis = http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity#ACTIB
* substance.strength.basis.text = "active ingredient - basis of strength"
