Instance: Hypromellose
InstanceOf: IngredientUvEpi
Title: "Ingredient - Hypromellose"
Description: "Excipient ingredient using Hypromellose"
Usage: #example

* id = "1c10b441-6bd3-40b8-b14b-514e7c2f79d0"

* identifier.system = $ginas
* identifier.value = "3NXW29V3WO"
* identifier.use = #official

* role = $spor-rms#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#3NXW29V3WO "Hypromellose"

// Reference to manufactured item
* for = Reference(manitemDrugX75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(acmeinc)