Instance: Magnesiumstearate
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Magnesium stearate"
Description: "Magnesium stearate"
Usage: #example

* id = "eee155e8-e442-491d-9a82-7af3cefac57f"
* identifier.system = $ginas
* identifier.value = "70097M6I30"
* identifier.use = #official

* role = $roleclass#IACT
* role.text = "inactive ingredient"

* status = #active

* substance.code.concept.coding = $ginas#70097M6I30 "Magnesium stearate"

// Reference to manufactured item
* for = Reference(manitemkarvea75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(sanofiaventisgroupe)
