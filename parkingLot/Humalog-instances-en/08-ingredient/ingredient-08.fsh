Instance: 19f0b789-3c8b-4f56-93e1-9ef70b5626a2
InstanceOf: IngredientUvEpi
Description: "Trometamol"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "023C2WHX2V"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#023C2WHX2V "Tromethamine"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(1a2b1f1d-5e6c-40cd-96a1-ee4183243de8)
