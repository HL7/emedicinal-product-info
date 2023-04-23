
Instance: contraindication-hypersensitivityreaction
InstanceOf: ClinicalUseDefinition-contraindication-uv-epi
Description: "contraindication - Hypersensitivity reaction"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "Hypersensitivity reaction"
* identifier.use = #official

* type = #contraindication

// Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet blister x28
 
* subject = Reference(mp367b9089c0743a2330f4c6e82b40ee41)

* contraindication
  * diseaseSymptomProcedure.concept.coding = $meddra#nan "Contraindication"



Instance: indication-diabetes
InstanceOf: ClinicalUseDefinition-indication-uv-epi
Description: "indication - Diabetes"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "Type 2 diabetes mellitus"
* identifier.use = #official

* type = #indication

// Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet blister x28
 
* subject = Reference(mp367b9089c0743a2330f4c6e82b40ee41)


* indication
  * diseaseSymptomProcedure.concept.coding = $meddra#10020772 "Hypertension"



Instance: interaction-bezafibrat
InstanceOf: ClinicalUseDefinition-interaction-uv-epi
Description: "interaction - Bezafibrat"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "Y9449Q51XH"
* identifier.use = #official

* type = #interaction

// Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet blister x28
 
* subject = Reference(mp367b9089c0743a2330f4c6e82b40ee41)



* interaction.interactant.itemCodeableConcept = https://gsrs.ncats.nih.gov/ginas/app/beta/#Y9449Q51XH "Bezafibrat"

//* interaction.interactant.itemCodeableConcept.text = "METHOTREXATE"
