Instance: acetaminophen75
InstanceOf: IngredientUvEpi
Title: "Ingredient - acetaminophen"
Description: "Example of an active ingredient using acetaminophen"
Usage: #example

* id = "745c01bc-936e-45ca-9880-57e97608f43e"

* identifier.system = $ginas
* identifier.value = "362O9ITL9D"
* identifier.use = #official

* status = #active

* role = $spor-rms#00000072072
* role.text = "active"

* substance.code.concept.coding = $ginas#362O9ITL9D "acetaminophen"
* substance.strength.presentationQuantity.value = 75
* substance.strength.presentationQuantity.unit = "mg"

* substance.strength.basis = http://terminology.hl7.org/CodeSystem/v3-RoleClass#ACTIB
* substance.strength.basis.text = "active ingredient - basis of strength"

// Reference to manufactured item
* for = Reference(manitemDrugX75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(acmeinc)
