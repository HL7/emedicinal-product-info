Instance: 58982a29-3996-4c6e-87a4-902003cbdc21
InstanceOf: Ingredient
Description: "Glycerol"
Usage: #example


* identifier.system = "$sct"
* identifier.value = "80582002"
* identifier.use = #official

* role = http://hl7.org/fhir/ingredient-role/#100000072082


* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#PDC6A3C0OX "Glycerin"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(4915c27b-b51a-4071-a031-71c5c5e52036)
