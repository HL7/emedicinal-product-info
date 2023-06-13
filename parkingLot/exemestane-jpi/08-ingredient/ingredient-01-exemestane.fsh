Instance: exemestane
InstanceOf: IngredientUvEpi
Description: "EXEMESTANE"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "NY22HMQ4BX"
* identifier.use = #official

* status = #active

// Reference to Manufactured Item
* for = Reference(7460b712-82ad-4cce-a756-90b0fa04896c)

* role = EmaSporIngredientRole#00000072072 "Active"


* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#NY22HMQ4BX "exemestane"
* substance.strength.presentationQuantity.value = 25
* substance.strength.presentationQuantity.unit = "mg"

* substance.strength.basis = http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity#ACTIB
* substance.strength.basis.text = "active ingredient - basis of strength"

// Reference to Organization: Manufaturer API
* manufacturer.manufacturer = Reference(organizationmah)
