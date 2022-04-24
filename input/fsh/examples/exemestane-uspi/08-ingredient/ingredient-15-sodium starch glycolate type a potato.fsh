Instance: b254f961-61ca-43f9-b3f9-5b0b5d4406a9
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
* for = Reference(23fed712-2d60-461d-83a6-5fb939b2a939)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#5856J3G2A2 "SODIUM STARCH GLYCOLATE TYPE A POTATO"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(85c5d81e-9d5a-4a15-8b9d-42bbbe0409c8)
