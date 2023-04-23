Instance: titaniumdioxide
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Titanium Dioxide"
Description: "Titanium Dioxide"
Usage: #example
* id = "a88891dc-7e9e-4d84-b462-95e53de3b6a6"

* identifier.system = $ginas
* identifier.value = "15FIX9V2JP"
* identifier.use = #official

* role = $roleclass#IACT
* role.text = "inactive ingredient"

* status = #active

* substance.code.concept.coding = $ginas#15FIX9V2JP "Titanium Dioxide"

// Reference to manufactured item
* for = Reference(manitemcava75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(acmeinc)