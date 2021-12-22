Instance: cfsb3768802370375
InstanceOf: Ingredient
Description: "Insulin glargine 100 units/ml"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "2ZM8CX04RZ"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#/#00000072072
* role.text = "active"

* description = "Insulin glargine"
* allergenicIndicator = false
 // Reference to Organization: Manufacturer
* manufacturer = Reference()

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#2ZM8CX04RZ "Insulin glargine"
* substance.strength.presentationQuantity.value = 100
* substance.strength.presentationQuantity.unit = "units/ml"
