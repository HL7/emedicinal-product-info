Instance: cfsb1639015963928
InstanceOf: Ingredient
Description: "dimethyl fumarate 30 mg"
Usage: #example
 
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "FO2303MNI2"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#/#00000072072
* role.text = "active"

* description = "dimethyl fumarate"
* allergenicIndicator = false
 // Reference to Organization: Manufacturer
* manufacturer = Reference(cfsb1639015344307)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#FO2303MNI2 "dimethyl fumarate"
* substance.strength.presentationQuantity.value = 30
* substance.strength.presentationQuantity.unit = "mg"
