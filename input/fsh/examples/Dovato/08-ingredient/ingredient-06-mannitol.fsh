Instance: cfsb1651230330246
InstanceOf: Ingredient
Description: "mannitol"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "3OWL53L36A"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

//reference to Manufactured Item: Dovato 50 mg/300 mg film-coated tablets
* for = Reference(cfsb1650998521654)

 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1650997423990)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#3OWL53L36A "mannitol"
