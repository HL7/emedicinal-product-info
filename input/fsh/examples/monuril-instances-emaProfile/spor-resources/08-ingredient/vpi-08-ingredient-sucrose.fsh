Instance: emacfsb1639762593730
InstanceOf: Ingredient
Description: "Sucrose"
Usage: #example
 
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "C151H8M554"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(emacfsb1639756818482)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/home#C151H8M554 "Sucrose"

 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(emacfsb1639753766266)