Instance: 35e7766e-26f8-4f1b-a319-443278a64416
InstanceOf: IngredientUvEpi
Description: "Zinc Oxide"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "SOI2LOH54Z"
* identifier.use = #official

* role = $ingredient-role#100000072082 "Excipient"


* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#SOI2LOH54Z "Zinc Oxide"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(1a2b1f1d-5e6c-40cd-96a1-ee4183243de8)
