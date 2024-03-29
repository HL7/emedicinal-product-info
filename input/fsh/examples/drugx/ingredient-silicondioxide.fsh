Instance: Silicondioxide
InstanceOf: IngredientUvEpi
Title: "Ingredient - Silicon dioxide"
Description: "Excipient ingredient using Silicon dioxide"
Usage: #example

* id = "09c13040-8fd5-4818-972d-f01d4ee169b6"

* identifier.system = $ginas
* identifier.value = "ETJ7Z6XBU4"
* identifier.use = #official

* role = $ingredient-role#100000072082 "Excipient"


* status = #active

* substance.code.concept.coding = $ginas#ETJ7Z6XBU4 "Silicon dioxide"

// Reference to manufactured item
* for = Reference(manitemDrugX75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(acmeinc)
