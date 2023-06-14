Instance: warninghypotension
InstanceOf: ClinicalUseDefinition-warning-uv-epi
Description: "Warning - hypotension"
Usage: #example
* id = "ac21a804-cafa-41ff-b644-a14c8003edeb"
* identifier.system = "http://example.org/sid"
* identifier.value = "warning-example-2"


* type = #warning

// Reference to MedicinalProductDefinition: EU/1/97/049/001 cava 75 mg tablet blister x28
* subject = Reference(cava75mgblisterx28)

* warning
  * description = "Intravascular volume depletion: symptomatic hypotension, especially after the first dose, may occur in patients who are volume and/or sodium depleted by vigorous diuretic therapy, dietary salt restriction, diarrhoea or vomiting. Such conditions should be corrected before the administration of cava."

