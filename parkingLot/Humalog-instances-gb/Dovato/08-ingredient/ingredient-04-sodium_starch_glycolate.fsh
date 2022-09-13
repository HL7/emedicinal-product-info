Instance: cfsb1651229974487
InstanceOf: Ingredient
Description: "sodium starch glycolate"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "H8AV0SQX4D"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

//reference to Manufactured Item: Dovato 50 mg/300 mg film-coated tablets
* for = Reference(cfsb1650998521654)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#H8AV0SQX4D "sodium starch glycolate"


 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1650997423990)
