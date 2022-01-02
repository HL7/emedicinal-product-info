Instance: cfsb5595996591065
InstanceOf: PackagedProductDefinition
Description: "x3 pre-filled pens"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "EU/1/16/1157/003"
* identifier.use = #official

* name = "3 ml cartridge (glass) in a pre-filled pen"

* type = https://spor.ema.europa.eu/rmswi/#/#100000155527
* type.text = "Chemical Medicinal Product"

* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2015-02-07T13:28:17Z"

* containedItemQuantity.value = 3
* containedItemQuantity.unit = "ml"

* description = "Type I colourless glass cartridge with a black plunger (bromobutyl rubber) and a flanged cap (aluminium) with inserted laminated sealing disks (bromobutyl rubber on the medicinal product side and polyisoprene on the outside) containing 3 ml of solution. Each cartridge is assembled into a disposable pen."

* copackagedIndicator = false

 // Reference to Organization: Manufacturer
* manufacturer = Reference(cfsb2176224411725)

* package.identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* package.identifier.value = "EU/1/16/1157/003"
* package.identifier.use = #official

* package.type = https://spor.ema.europa.eu/rmswi/#/#100000073543
* package.type.text = "Pre-filled pen"

* package.quantity = 3

* package.material = https://spor.ema.europa.eu/rmswi/#/#200000003204
* package.material.text = "Glass type I"