Instance: Silicondioxide
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Silicon dioxide"
Description: "Silicon dioxide"
Usage: #example

* id = "09c13040-8fd5-4818-972d-f01d4ee169b6"
* identifier.system = $ginas
* identifier.value = "ETJ7Z6XBU4"
* identifier.use = #official

* role = $roleclass#IACT
* role.text = "inactive ingredient"

* status = #active

* substance.code.concept.coding = $ginas#ETJ7Z6XBU4 "Silicon dioxide"

// Reference to manufactured item
* for = Reference(manitemkarvea75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(sanofiaventisgroupe)
