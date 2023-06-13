Instance: syntehticwax
InstanceOf: IngredientUvEpi
Description: "synthetic wax"
Usage: #example


* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "5M631N9V0S"
* identifier.use = #official

* role = EmaSporIngredientRole#100000072082 "Excipient"


* status = #active

// Reference to Manufactured Item
* for = Reference(7460b712-82ad-4cce-a756-90b0fa04896c)

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#5M631N9V0S "synthetic wax"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(organizationmah)
