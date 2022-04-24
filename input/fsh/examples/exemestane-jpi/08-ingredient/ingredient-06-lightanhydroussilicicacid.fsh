Instance: cfsb1640780048732
InstanceOf: Ingredient
Description: "light anhydrous silicic acid"
Usage: #example


* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "ETJ7Z6XBU4"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(cfsb1640777487408)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#ETJ7Z6XBU4 "light anhydrous silicic acid"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1640870284639)
