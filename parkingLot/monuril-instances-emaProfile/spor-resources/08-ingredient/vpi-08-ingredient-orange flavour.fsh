Instance: emacfsb1639762372322
InstanceOf: Ingredient
Description: "Orange flavour"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "5EVU04N5QU"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(emacfsb1639756818482)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/home#5EVU04N5QU "Orange"

 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(emacfsb1639753766266)

