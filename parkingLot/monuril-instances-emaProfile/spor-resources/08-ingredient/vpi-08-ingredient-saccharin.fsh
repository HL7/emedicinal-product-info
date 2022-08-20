Instance: emacfsb1639762372321
InstanceOf: Ingredient
Description: "Saccharin"
Usage: #example
 
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "FST467XS7D"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

// Reference to Manufactured Item
* for = Reference(emacfsb1639756818482)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/home#FST467XS7D "Saccharin"

 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(emacfsb1639753766266)
