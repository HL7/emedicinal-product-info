Instance: Hypromellose
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Hypromellose"
Description: "Hypromellose"
Usage: #example

* identifier.system = $ginas
* identifier.value = "3NXW29V3WO"
* identifier.use = #official

* role = $spor-rms#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#3NXW29V3WO "Hypromellose"

// Reference to manufactured item
* for = Reference(manitemkarvea75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(sanofiaventisgroupe)