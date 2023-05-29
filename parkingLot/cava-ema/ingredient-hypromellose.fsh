Instance: Hypromellose
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Hypromellose"
Description: "Hypromellose"
Usage: #example

* id = "1c10b441-6bd3-40b8-b14b-514e7c2f79d0"
* identifier.system = $ginas
* identifier.value = "3NXW29V3WO"
* identifier.use = #official

* role = $roleclass#IACT
* role.text = "inactive ingredient"

* status = #active

* substance.code.concept.coding = $ginas#3NXW29V3WO "Hypromellose"

// Reference to manufactured item
* for = Reference(manitemcava75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(acmeinc)