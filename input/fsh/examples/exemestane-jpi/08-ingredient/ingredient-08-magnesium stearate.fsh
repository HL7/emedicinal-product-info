Instance: cfsb1640780546110
InstanceOf: Ingredient
Description: "MAGNESIUM STEARATE"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "70097M6I30"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(cfsb1640777487408)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#70097M6I30 "MAGNESIUM STEARATE"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1640870284639)
