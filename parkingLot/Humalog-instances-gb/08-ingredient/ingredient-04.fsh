Instance: 541e16ce-bbb6-4fdf-9691-1843a1fdd560
InstanceOf: Ingredient
Description: "Sodium Hydroxide"
Usage: #example


* identifier.system = "$sct"
* identifier.value = "23423003"
* identifier.use = #official

* role = http://hl7.org/fhir/ingredient-role/#100000072082


* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#55X04QC32I "Sodium Hydroxide"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(4915c27b-b51a-4071-a031-71c5c5e52036)
