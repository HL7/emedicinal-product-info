Instance: Macrogol3000
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Macrogol 3000"
Description: "Macrogol 3000"
Usage: #example

* id = "ceba5cd1-321f-4bc3-b203-92d97fcf472e"
* identifier.system = $ginas
* identifier.value = "SA1B764746"
* identifier.use = #official

* role = $roleclass#IACT
* role.text = "inactive ingredient"

* status = #active

* substance.code.concept.coding = $ginas#SA1B764746 "Macrogol 3000"

// Reference to manufactured item
* for = Reference(manitemcava75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(acmeinc)
