Instance: cfsb1651170791283
InstanceOf: Ingredient
Description: "microcrystalline cellulose"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "OP1R32D61U"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#OP1R32D61U "microcrystalline cellulose"

//reference to Manufactured Item: Dovato 50 mg/300 mg film-coated tablets
* for = Reference(cfsb1650998521654)

 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1650997423990)
