Instance: cfsb6349319941521
InstanceOf: Ingredient
Description: "Trometamol"
Usage: #example

* identifier.system = $ginas
* identifier.value = "023C2WHX2V"
* identifier.use = #official

* role = $spor-rms#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#023C2WHX2V "Tromethamine"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1950833461423)
