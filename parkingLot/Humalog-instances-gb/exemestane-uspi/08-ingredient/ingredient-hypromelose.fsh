Instance: cc5753cd-e648-47d2-a135-503cd8a3e1da
InstanceOf: IngredientUvEpi
Description: "HYPROMELLOSE, UNSPECIFIED"
Usage: #example


* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "3NXW29V3WO"
* identifier.use = #official

* role = EmaSporIngredientRole#100000072082 "Excipient"


* status = #active

// Reference to Manufactured Item
* for = Reference(23fed712-2d60-461d-83a6-5fb939b2a939)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#3NXW29V3WO "HYPROMELLOSE, UNSPECIFIED "

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(85c5d81e-9d5a-4a15-8b9d-42bbbe0409c8)
