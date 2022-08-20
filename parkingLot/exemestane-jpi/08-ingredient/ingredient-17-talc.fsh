Instance: 42a65fd0-6ba9-4b81-9cc2-4c9754d56a95
InstanceOf: IngredientUvEpi
Description: "talc"
Usage: #example


* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "7SEV7J4R1U"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(7460b712-82ad-4cce-a756-90b0fa04896c)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#7SEV7J4R1U "talc"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(7f257409-3b65-401d-a246-7ae51e298fbb)
