Instance: warninghypotension
InstanceOf: ClinicalUseDefinition-warning-uv-epi
Description: "Warning - hypotension"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "hypotension"
* identifier.use = #official

* type = #warning

// Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet blister x28
* subject = Reference(urn:uuid:800a51a2-d81d-49a4-a4eb-f2417d301837)

* warning
  * description = "Intravascular volume depletion: symptomatic hypotension, especially after the first dose, may occur in patients who are volume and/or sodium depleted by vigorous diuretic therapy, dietary salt restriction, diarrhoea or vomiting. Such conditions should be corrected before the administration of Karvea."

