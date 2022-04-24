Instance: cfsb1640780546713
InstanceOf: Ingredient
Description: "METHYLPARABEN"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "A2I8C7HI9T"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(cfsb1640777487408)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#A2I8C7HI9T "METHYLPARABEN"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1640870284639)
