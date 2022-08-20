Instance: 65bb58dd-b083-4cd3-892f-60fed75967d5
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
* for = Reference(7460b712-82ad-4cce-a756-90b0fa04896c)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#6OZP39ZG8H "POLYSORBATE 80"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(7f257409-3b65-401d-a246-7ae51e298fbb)
