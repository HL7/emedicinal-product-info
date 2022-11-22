Instance: Silicondioxide
InstanceOf: IngredientUvEpi
Title: "Ingredient-excipient Silicon dioxide"
Description: "Silicon dioxide"
Usage: #example


* identifier.system = $ginas
* identifier.value = "ETJ7Z6XBU4"
* identifier.use = #official

* role = $spor-rms#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#ETJ7Z6XBU4 "Silicon dioxide"

// Reference to manufactured item
* for = Reference(urn:uuid:3214f286-b8ec-4ef5-bc8d-0aec39d97468)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(urn:uuid:d71bf884-90eb-47f9-81b7-fa81ecec7e75)
