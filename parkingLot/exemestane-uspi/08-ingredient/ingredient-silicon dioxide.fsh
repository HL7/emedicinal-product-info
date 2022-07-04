Instance: 16dc4148-5296-4f7a-8576-2e6bf9dde736
InstanceOf: IngredientUvEpi
Description: "SILICON DIOXIDE"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "ETJ7Z6XBU4"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(23fed712-2d60-461d-83a6-5fb939b2a939)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#ETJ7Z6XBU4 "SILICON DIOXIDE"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(85c5d81e-9d5a-4a15-8b9d-42bbbe0409c8)
