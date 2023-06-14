Instance: 91c9bc45-3ea5-4cf5-854f-07c4360355dc
InstanceOf: IngredientUvEpi
Description: "metacresol"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "GGO4Y809LO"
* identifier.use = #official

* role = $ingredient-role#100000072082 "Excipient"


* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#GGO4Y809LO "Metacresol"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(1a2b1f1d-5e6c-40cd-96a1-ee4183243de8)
