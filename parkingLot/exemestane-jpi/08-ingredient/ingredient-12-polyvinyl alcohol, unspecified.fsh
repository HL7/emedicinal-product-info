Instance: 9df66779-105d-4df6-b920-a3d134cec967
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
* for = Reference(7460b712-82ad-4cce-a756-90b0fa04896c)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#532B59J990 "POLYVINYL ALCOHOL, UNSPECIFIED"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(7f257409-3b65-401d-a246-7ae51e298fbb)
