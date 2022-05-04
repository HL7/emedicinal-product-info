Instance: 0e42bde2-8bbd-4fb1-9d67-51e3c7c6f245
InstanceOf: IngredientUvEpi
Description: "Water for injections"
Usage: #example


* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "059QF0KO0R"
* identifier.use = #official

* role = https://spor.ema.europa.eu/rmswi/#100000072082
* role.text = "Excipient"

* status = #active

* substance.code.concept.coding = https://gsrs.ncats.nih.gov/ginas/app/beta/#059QF0KO0R "Water for Injection"

// Reference to Organization: Manufacturer
* manufacturer.manufacturer = Reference(1a2b1f1d-5e6c-40cd-96a1-ee4183243de8)
