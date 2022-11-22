Instance: Hypromellose
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Hypromellose"
Description: "Hypromellose"
Usage: #example

* identifier.system = $ginas
* identifier.value = "3NXW29V3WO"
* identifier.use = #official

* role = $spor-rms#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#3NXW29V3WO "Hypromellose"

// Reference to manufactured item
* for = Reference(urn:uuid:3214f286-b8ec-4ef5-bc8d-0aec39d97468)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(urn:uuid:d71bf884-90eb-47f9-81b7-fa81ecec7e75)