Instance: mannitol
InstanceOf: IngredientUvEpi
Description: "MANNITOL"
Usage: #example


* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "3OWL53L36A"
* identifier.use = #official

* role = $ingredient-role#100000072082 "Excipient"


* status = #active

// Reference to Manufactured Item
* for = Reference(7460b712-82ad-4cce-a756-90b0fa04896c)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#3OWL53L36A "MANNITOL"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(organizationmah)
