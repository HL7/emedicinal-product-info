Instance: cfsb8743912652556
InstanceOf: Ingredient
Description: "Glycerol"
Usage: #example


* identifier.system = $ginas
* identifier.value = "PDC6A3C0OX"
* identifier.use = #official

* role = $spor-rms#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#PDC6A3C0OX "Glycerin"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1950833461423)
