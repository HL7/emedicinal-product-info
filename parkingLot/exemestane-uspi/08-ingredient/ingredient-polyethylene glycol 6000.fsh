Instance: 0c81c330-cf57-45c2-9ca2-559aea4c8060
InstanceOf: IngredientUvEpi
Description: "POLYETHYLENE GLYCOL 6000"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "30IQX730WE"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(23fed712-2d60-461d-83a6-5fb939b2a939)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#30IQX730WE "POLYETHYLENE GLYCOL 6000"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(85c5d81e-9d5a-4a15-8b9d-42bbbe0409c8)
