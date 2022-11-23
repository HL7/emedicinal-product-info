Instance: Microcrystallinecellulose
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Microcrystalline cellulose"
Description: "Microcrystalline cellulose"
Usage: #example

* id = "1cdfb0bc-55f0-43ff-b750-8f3a0d9970bd"
* identifier.system = $ginas
* identifier.value = "OP1R32D61U"
* identifier.use = #official

* role = $roleclass#IACT
* role.text = "inactive ingredient"

* status = #active

* substance.code.concept.coding = $ginas#OP1R32D61U "Microcrystalline cellulose"

// Reference to manufactured item
* for = Reference(manitemkarvea75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(sanofiaventisgroupe)
