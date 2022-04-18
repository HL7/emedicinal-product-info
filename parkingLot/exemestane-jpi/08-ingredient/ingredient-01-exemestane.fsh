Instance: cfsb1640607635665
InstanceOf: Ingredient
Description: "EXEMESTANE"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "NY22HMQ4BX"
* identifier.use = #official

* status = #active

// Reference to Manufactured Item
* for = Reference(cfsb1640777487408)

* role = https://spor.ema.europa.eu/rmswi/#00000072072
* role.text = "active"

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#NY22HMQ4BX "exemestane"
* substance.strength.presentationQuantity.value = 25
* substance.strength.presentationQuantity.unit = "mg"

* substance.strength.basis = http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity#ACTIB
* substance.strength.basis.text = "active ingredient - basis of strength"

// Reference to Organization: Manufaturer API
* manufacturer.manufacturer = Reference(cfsb1640870284639)
