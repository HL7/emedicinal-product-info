Instance: lactosemonohydrate
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Lactose Monohydrate"
Description: "Lactose Monohydrate"
Usage: #example


* identifier.system = $ginas
* identifier.value = "EWQ57Q8I5X"
* identifier.use = #official

* role = $spor-rms#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#EWQ57Q8I5X "Lactose Monohydrate"

// Reference to manufactured item
* for = Reference(manitemkarvea75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(sanofiaventisgroupe)
