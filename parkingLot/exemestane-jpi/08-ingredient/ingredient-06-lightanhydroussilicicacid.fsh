Instance: aba217d4-5bc4-4690-b100-401cae4390ed
InstanceOf: IngredientUvEpi
Description: "light anhydrous silicic acid"
Usage: #example


* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "ETJ7Z6XBU4"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(7460b712-82ad-4cce-a756-90b0fa04896c)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#ETJ7Z6XBU4 "light anhydrous silicic acid"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(7f257409-3b65-401d-a246-7ae51e298fbb)
