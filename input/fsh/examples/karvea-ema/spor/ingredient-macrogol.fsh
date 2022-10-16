Instance: Macrogol3000
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Macrogol 3000"
Description: "Macrogol 3000"
Usage: #example

* identifier.system = $ginas
* identifier.value = "SA1B764746"
* identifier.use = #official

* role = $spor-rms#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#SA1B764746 "Macrogol 3000"

// Reference to manufactured item
* for = Reference(manitemkarvea75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(sanofiaventisgroupe)
