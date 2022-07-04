Instance: 733fb580-1139-4188-aff8-ad6efe243555
InstanceOf: IngredientUvEpi
Description: "POLYVINYL ALCOHOL, UNSPECIFIED"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "532B59J990"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(23fed712-2d60-461d-83a6-5fb939b2a939)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#532B59J990 "POLYVINYL ALCOHOL, UNSPECIFIED"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(85c5d81e-9d5a-4a15-8b9d-42bbbe0409c8)
