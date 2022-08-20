Instance: cbb53556-9c1f-4fa7-b2af-2eea988dee2d
InstanceOf: IngredientUvEpi
Description: "TITANIUM DIOXIDE "
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "15FIX9V2JP"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(7460b712-82ad-4cce-a756-90b0fa04896c)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#15FIX9V2JP "TITANIUM DIOXIDE "

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(7f257409-3b65-401d-a246-7ae51e298fbb)
