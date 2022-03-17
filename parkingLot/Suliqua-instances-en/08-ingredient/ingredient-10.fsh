Instance: cfsb7034777237464
InstanceOf: Ingredient
Description: "Water for injections"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "059QF0KO0R"
* identifier.use = #official

* status = #active

* role = https://spor.ema.europa.eu/rmswi/#/#100000072082
* role.text = "Excipient"

* allergenicIndicator = false
 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb2176224411725)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#059QF0KO0R "Water for injections"