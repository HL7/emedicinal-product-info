Instance: warning
InstanceOf: ClinicalUseDefinitionWarningUvEpi
Title: "Clinical Use - Warning"
Description: "Warning - hypotension"
Usage: #example

* id = "ac21a804-cafa-41ff-b644-a14c8003edeb"

* identifier.system = "http://example.org/sid"
* identifier.value = "warning-example-1"


* type = #warning

// Reference to MedicinalProductDefinition: DrugX 75 mg tablet blister x28
* subject = Reference(DrugX75mgblisterx28)

* warning
  * description = "Symptomatic hypotension, especially after the first dose, may occur in patients."

