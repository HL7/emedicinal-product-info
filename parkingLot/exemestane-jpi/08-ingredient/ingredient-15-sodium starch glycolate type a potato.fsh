Instance: cfsb1640780546711
InstanceOf: Ingredient
Description: "SODIUM STARCH GLYCOLATE TYPE A POTATO"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "5856J3G2A2"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(cfsb1640777487408)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#5856J3G2A2 "SODIUM STARCH GLYCOLATE TYPE A POTATO"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1640870284639)
