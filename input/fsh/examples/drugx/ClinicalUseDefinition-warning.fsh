Instance: warning
InstanceOf: ClinicalUseDefinitionWarningUvEpi
Title: "Clinical Use - Warning"
Description: "Warning - hypotension"
Usage: #example

* id = "ac21a804-cafa-41ff-b644-a14c8003edeb"

* identifier.system = "https://spor.ema.europa.eu/rmswi#"
* identifier.value = "hypotension"
* identifier.use = #official

* type = #warning

// Reference to MedicinalProductDefinition: DrugX 75 mg tablet blister x28
* subject = Reference(DrugX75mgblisterx28)

* warning
  * description = "Symptomatic hypotension, especially after the first dose, may occur in patients."

