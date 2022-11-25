Instance: Croscarmellosesodium
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Croscarmellose sodium"
Description: "Croscarmellose sodium"
Usage: #example

* id = "fbf58407-83d3-42db-be3d-506b2006d431"
* identifier.system = $ginas
* identifier.value = "M28OL1HH48"
* identifier.use = #official

* role = $roleclass#IACT
* role.text = "inactive ingredient"

* status = #active

* substance.code.concept.coding = $ginas#M28OL1HH48 "Croscarmellose sodium"

// Reference to manufactured item
* for = Reference(manitemcava75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(acmeinc)
