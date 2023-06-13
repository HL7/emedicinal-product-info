Instance: c2613b44-2f13-4af2-b882-7fe7db8b013e
InstanceOf: IngredientUvEpi
Description: "Insulin Lispro"
Usage: #example

* identifier.system = "$sct"
* identifier.value = "412210000"
* identifier.use = #official

* status = #active

// * role = EmaSporIngredientRole#00000072072 "Active"
* role = http://hl7.org/fhir/ingredient-role/#100000072072




* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#GFX7QIS1II "Insulin lispro"
* substance.strength.presentationQuantity.value = 100
* substance.strength.presentationQuantity.unit = "units/ml"

* substance.strength.basis = http://terminology.hl7.org/ValueSet/v3-RoleClassIngredientEntity#ACTIB
* substance.strength.basis.text = "active ingredient - basis of strength"

// Reference to Organization: Manufaturer API
* manufacturer.manufacturer = Reference(3cfc2347-44ef-448d-8929-7e06687d9473)
