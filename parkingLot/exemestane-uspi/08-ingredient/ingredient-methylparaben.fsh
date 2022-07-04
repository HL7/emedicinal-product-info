Instance: 5f2c1669-3991-4cc2-b252-958b738d5df8
InstanceOf: IngredientUvEpi
Description: "METHYLPARABEN"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "A2I8C7HI9T"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(23fed712-2d60-461d-83a6-5fb939b2a939)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#A2I8C7HI9T "METHYLPARABEN"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(85c5d81e-9d5a-4a15-8b9d-42bbbe0409c8)
