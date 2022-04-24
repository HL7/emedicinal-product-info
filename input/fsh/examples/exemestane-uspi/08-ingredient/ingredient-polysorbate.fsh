Instance: 6708560e-135d-4b2a-afde-9e3b03f27939
InstanceOf: IngredientUvEpi
Description: "POLYSORBATE 80"
Usage: #example


* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "6OZP39ZG8H"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(23fed712-2d60-461d-83a6-5fb939b2a939)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#6OZP39ZG8H "POLYSORBATE 80"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(85c5d81e-9d5a-4a15-8b9d-42bbbe0409c8)
