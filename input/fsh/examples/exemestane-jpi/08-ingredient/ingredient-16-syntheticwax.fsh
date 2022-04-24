Instance: cfsb1640780048752
InstanceOf: Ingredient
Description: "synthetic wax"
Usage: #example


* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "5M631N9V0S"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(cfsb1640777487408)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#5M631N9V0S "synthetic wax"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1640870284639)
