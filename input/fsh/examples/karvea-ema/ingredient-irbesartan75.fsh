Instance: irbesartan
InstanceOf: IngredientUvEpi
Title: "Ingredient-active irbesartan"
Description: "irbesartan"
Usage: #example

* identifier.system = $ginas
* identifier.value = "J0E2756Z7N"
* identifier.use = #official

* status = #active

* role = $spor-rms#00000072072
* role.text = "active"

* substance.code.concept.coding = $ginas#J0E2756Z7N "irbesartan"
* substance.strength.presentationQuantity.value = 75
* substance.strength.presentationQuantity.unit = "mg"

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB
* substance.strength.basis.text = "active ingredient - basis of strength"

// Reference to manufactured item
* for = Reference(urn:uuid:3214f286-b8ec-4ef5-bc8d-0aec39d97468)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(urn:uuid:d71bf884-90eb-47f9-81b7-fa81ecec7e75)
