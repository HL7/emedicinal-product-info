Instance: 8b002e0b-8e9d-4448-a740-82f2ba8423c1
InstanceOf: Ingredient
Description: "Trometamol"
Usage: #example

* identifier.system = "$sct"
* identifier.value = "404882002"
* identifier.use = #official

* role = http://hl7.org/fhir/ingredient-role/#100000072082


* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#023C2WHX2V "Tromethamine"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(4915c27b-b51a-4071-a031-71c5c5e52036)
