Instance: Croscarmellosesodium
InstanceOf: IngredientUvEpi
Description: "Croscarmellose sodium"
Usage: #example

* identifier.system = $ginas
* identifier.value = "M28OL1HH48"
* identifier.use = #official

* role = $spor-rms#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = $ginas#M28OL1HH48 "Croscarmellose sodium"

// Reference to manufactured item
* for = Reference(manitemDrugX75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(acmeinc)
