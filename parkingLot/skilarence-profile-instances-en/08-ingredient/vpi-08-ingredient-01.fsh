Instance: cfsb1639015963928
InstanceOf: Ingredient
Description: "dimethyl fumarate 30 mg"
Usage: #example
 
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "FO2303MNI2"
* identifier.use = #official

* status = #active

* role = https://spor.ema.europa.eu/rmswi/#/#100000072072


* allergenicIndicator = false
 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1639015344307)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#FO2303MNI2 "dimethyl fumarate"
* substance.strength.presentationQuantity.value = 30
* substance.strength.presentationQuantity.unit = "mg"

* substance.strength.basis = http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity#ACTIB
* substance.strength.basis.text = "active ingredient - basis of strength"