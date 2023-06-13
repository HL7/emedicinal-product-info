Instance: 7cecf03f-277f-44b1-be59-2839683ec50f
InstanceOf: Ingredient
Description: "Hydrochloric acid"
Usage: #example

* identifier.system = "$sct"
* identifier.value = "27763000"
* identifier.use = #official

* role = http://hl7.org/fhir/ingredient-role/#100000072082


* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#QTT17582CB "Hydrochloric acid"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(4915c27b-b51a-4071-a031-71c5c5e52036)
