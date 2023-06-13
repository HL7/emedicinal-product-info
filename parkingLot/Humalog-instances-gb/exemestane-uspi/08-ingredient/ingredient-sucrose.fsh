Instance: c5a3cb57-3f3e-4309-ae34-0926300de57e
InstanceOf: IngredientUvEpi
Description: "SUCROSE"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "C151H8M554"
* identifier.use = #official

* role = EmaSporIngredientRole#100000072082 "Excipient"


* status = #active

// Reference to Manufactured Item
* for = Reference(23fed712-2d60-461d-83a6-5fb939b2a939)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#C151H8M554 "SUCROSE"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(85c5d81e-9d5a-4a15-8b9d-42bbbe0409c8)
