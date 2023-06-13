Instance: 5a574ff2-f3e6-4aaa-8d3c-27e6ab343533
InstanceOf: IngredientUvEpi
Description: "EXEMESTANE"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "NY22HMQ4BX"
* identifier.use = #official

* status = #active

// Reference to Manufactured Item
* for = Reference(23fed712-2d60-461d-83a6-5fb939b2a939)

* role = EmaSporIngredientRole#00000072072 "Active"


* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#NY22HMQ4BX "exemestane"
* substance.strength.presentationQuantity.value = 25
* substance.strength.presentationQuantity.unit = "mg"

* substance.strength.basis = http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity#ACTIB
* substance.strength.basis.text = "active ingredient - basis of strength"

// Reference to Organization: Manufaturer API
* manufacturer.manufacturer = Reference(85c5d81e-9d5a-4a15-8b9d-42bbbe0409c8)
