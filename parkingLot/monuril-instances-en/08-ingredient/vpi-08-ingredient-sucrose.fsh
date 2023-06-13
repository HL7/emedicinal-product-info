Instance: cfsb1639762593730
InstanceOf: Ingredient
Description: "Sucrose"
Usage: #example
 
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "C151H8M554"
* identifier.use = #official

* role = $ingredient-role#100000072082 "Excipient"


* status = #active

// Reference to Manufactured Item
* for = Reference(cfsb1639756818482)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/home#C151H8M554 "Sucrose"

 // Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(cfsb1639753766266)