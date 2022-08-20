Instance: emacfsb1639762372323
InstanceOf: Ingredient
Description: "Mandarin flavour"
Usage: #example
 
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "KH3E3096OO"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(emacfsb1639756818482)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/home#KH3E3096OO  "Tangerine"

 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(emacfsb1639753766266)

