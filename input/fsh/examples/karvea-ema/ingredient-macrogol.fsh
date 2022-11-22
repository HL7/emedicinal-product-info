Instance: Macrogol3000
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Macrogol 3000"
Description: "Macrogol 3000"
Usage: #example

* identifier.system = $ginas
* identifier.value = "SA1B764746"
* identifier.use = #official

* role = $spor-rms#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#SA1B764746 "Macrogol 3000"

// Reference to manufactured item
* for = Reference(urn:uuid:3214f286-b8ec-4ef5-bc8d-0aec39d97468)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(urn:uuid:d71bf884-90eb-47f9-81b7-fa81ecec7e75)
