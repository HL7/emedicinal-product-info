Instance: Magnesiumstearate
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Magnesium stearate"
Description: "Magnesium stearate"
Usage: #example


* identifier.system = $ginas
* identifier.value = "70097M6I30"
* identifier.use = #official

* role = $spor-rms#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#70097M6I30 "Magnesium stearate"

// Reference to manufactured item
* for = Reference(manitemkarvea75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(sanofiaventisgroupe)
