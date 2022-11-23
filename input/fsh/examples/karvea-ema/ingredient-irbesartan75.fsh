Instance: irbesartan
InstanceOf: IngredientUvEpi
Title: "Ingredient-active irbesartan"
Description: "irbesartan"
Usage: #example

* id = "745c01bc-936e-45ca-9880-57e97608f43e"
* identifier.system = $ginas
* identifier.value = "J0E2756Z7N"
* identifier.use = #official

* status = #active

* role = $roleclass#ACTIB
* role.text = "active ingredient - basis of strength"

* substance.code.concept.coding = $ginas#J0E2756Z7N "irbesartan"
* substance.strength.presentationQuantity.value = 75
* substance.strength.presentationQuantity.unit = "mg"

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB
* substance.strength.basis.text = "active ingredient - basis of strength"

// Reference to manufactured item
* for = Reference(manitemkarvea75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(sanofiaventisgroupe)
