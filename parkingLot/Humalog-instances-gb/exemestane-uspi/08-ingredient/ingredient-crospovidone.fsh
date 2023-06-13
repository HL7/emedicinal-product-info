Instance: f35c1543-e4e2-4215-b91c-f092b1fb9655
InstanceOf: IngredientUvEpi
Description: "microcrystalline cellulose"
Usage: #example


* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "68401960MK"
* identifier.use = #official

* role = EmaSporIngredientRole#100000072082 "Excipient"


* status = #active

// Reference to Manufactured Item
* for = Reference(23fed712-2d60-461d-83a6-5fb939b2a939)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#68401960MK "crospovidone"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(85c5d81e-9d5a-4a15-8b9d-42bbbe0409c8)
