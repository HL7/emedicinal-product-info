Instance: cfsb7644964356957
InstanceOf: Ingredient
Description: "Glycerol 85%"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "PDC6A3C0OX"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#/#00000072072
* role.text = "active"

* description = "Glycerol"
* allergenicIndicator = false
 // Reference to Organization: Manufacturer
* manufacturer = Reference()

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#PDC6A3C0OX "Glycerol"
* substance.strength.presentationQuantity.value = 85
* substance.strength.presentationQuantity.unit = "%"
