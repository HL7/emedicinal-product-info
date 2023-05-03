


Instance: cud-a40c2367ed3c1c715eacd432105752a0
InstanceOf: ClinicalUseDefinition-contraindication-uv-epi
Description: "contraindication - Diabetis Mellitus"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "xx"
* identifier.use = #official

* type = #contraindication

// Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet blister x28
 
* subject = Reference(mpa2bd0171a7654dc24f7eb7e9338e1acc)

* contraindication
  * diseaseSymptomProcedure.concept.coding = $meddra#10012601 "Diabetis Mellitus"





Instance: cud-585e364c14debe29f6c6b564138aa400
InstanceOf: ClinicalUseDefinition-indication-uv-epi
Description: "indication - Hypertension"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "xx"
* identifier.use = #official

* type = #indication

// Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet blister x28
 
* subject = Reference(mpa2bd0171a7654dc24f7eb7e9338e1acc)


* indication
  * diseaseSymptomProcedure.concept.coding = $meddra#10020772 "Hypertension"





Instance: cud-4fce9d5258f70f7d605059f97c24efa8
InstanceOf: ClinicalUseDefinition-interaction-uv-epi
Description: "interaction - METHOTREXATE"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "xx"
* identifier.use = #official

* type = #interaction

// Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet blister x28
 
* subject = Reference(mpa2bd0171a7654dc24f7eb7e9338e1acc)



* interaction.interactant.itemCodeableConcept = https://gsrs.ncats.nih.gov/ginas/app/beta/#YL5FZ2Y5U1 "METHOTREXATE"

//* interaction.interactant.itemCodeableConcept.text = "METHOTREXATE"
