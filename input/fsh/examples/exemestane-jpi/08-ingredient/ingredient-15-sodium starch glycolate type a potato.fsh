Instance: 8d6832f1-7d1d-483b-a0fd-879d531681fb
InstanceOf: IngredientUvEpi
Description: "SODIUM STARCH GLYCOLATE TYPE A POTATO"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "5856J3G2A2"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(7460b712-82ad-4cce-a756-90b0fa04896c)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#5856J3G2A2 "SODIUM STARCH GLYCOLATE TYPE A POTATO"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(7f257409-3b65-401d-a246-7ae51e298fbb)
