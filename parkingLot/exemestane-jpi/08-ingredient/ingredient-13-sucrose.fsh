Instance: f4d45370-a6f1-4c35-a82a-f64982ab89b3
InstanceOf: IngredientUvEpi
Description: "SUCROSE"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "C151H8M554"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(7460b712-82ad-4cce-a756-90b0fa04896c)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#C151H8M554 "SUCROSE"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(7f257409-3b65-401d-a246-7ae51e298fbb)
