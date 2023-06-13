Instance: titaniumdioxide
InstanceOf: IngredientUvEpi
Title: "Ingredient - Titanium Dioxide"
Description: "Excipient ingredient using Titanium Dioxide"
Usage: #example

* id = "a88891dc-7e9e-4d84-b462-95e53de3b6a6"

* identifier.system = $ginas
* identifier.value = "15FIX9V2JP"
* identifier.use = #official

* role = EmaSporIngredientRole#100000072082 "Excipient"


* status = #active

* substance.code.concept.coding = $ginas#15FIX9V2JP "Titanium Dioxide"

// Reference to manufactured item
* for = Reference(manitemDrugX75)

// Reference to Organization:  Reference to MAH
* manufacturer.manufacturer = Reference(acmeinc)