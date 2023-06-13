Instance: 3df8b236-9a7f-41da-8cc1-6e851a179d0a
InstanceOf: Ingredient
Description: "Water for injections"
Usage: #example


* identifier.system = "$sct"
* identifier.value = "3330811000001107"
* identifier.use = #official

* role = http://hl7.org/fhir/ingredient-role/#100000072082


* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#059QF0KO0R "Water for Injection"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(4915c27b-b51a-4071-a031-71c5c5e52036)
