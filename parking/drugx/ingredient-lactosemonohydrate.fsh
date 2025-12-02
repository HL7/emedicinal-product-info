Instance: lactosemonohydrate
InstanceOf: IngredientUvEpi
Title: "Ingredient - Lactose Monohydrate"
Description: "Excipient ingredient using Lactose Monohydrate"
Usage: #example

* id = "7a3c0b14-2473-4541-9e45-a24d24cceddf"

* identifier.system = $ginas
* identifier.value = "EWQ57Q8I5X"
* identifier.use = #official

* role = $ingredient-role#100000072082 "Excipient"


* status = #active

* substance.code.concept.coding = $ginas#EWQ57Q8I5X "Lactose Monohydrate"

// Reference to manufactured item
* for = Reference(manitemDrugX75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(acmeinc)
