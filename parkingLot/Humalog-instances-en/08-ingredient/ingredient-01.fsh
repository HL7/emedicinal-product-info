Instance: b4c4de8c-c991-4771-bd28-557e2b98d67f
InstanceOf: IngredientUvEpi
Description: "Insulin Lispro"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "GFX7QIS1II"
* identifier.use = #official

* status = #active

* role = EmaSporIngredientRole#00000072072 "Active"


* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#GFX7QIS1II "Insulin lispro"
* substance.strength.presentationQuantity.value = 100
* substance.strength.presentationQuantity.unit = "units/ml"

* substance.strength.basis = http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity#ACTIB
* substance.strength.basis.text = "active ingredient - basis of strength"

// Reference to Organization: Manufaturer API
* manufacturer.manufacturer = Reference(02108a99-0146-4b46-ae72-44e35ca682fc)
