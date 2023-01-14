
Instance: contraindication-hypersensitivityreaction
InstanceOf: ClinicalUseDefinition-contraindication-uv-epi
Description: "contraindication - Hypersensitivity reaction"
Usage: #example
* id = "9787cf66-35a6-4162-96b1-7f74643cbf78" 

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "Hypersensitivity reaction"
* identifier.use = #official

* type = #contraindication

// Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet blister x28
 
* subject = Reference(mpSuliqua100unitsml50microgramsmlsolutionforinjectioninaprefilledpen)

* contraindication
  * diseaseSymptomProcedure.concept.coding = $meddra#nan "Contraindication"



Instance: indication-hypertension
InstanceOf: ClinicalUseDefinition-indication-uv-epi
Description: "indication - Hypertension"
Usage: #example
* id = "645b0b15-9a00-4c3f-bf51-fbcc38474d72" 

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "Type 2 diabetes mellitus"
* identifier.use = #official

* type = #indication

// Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet blister x28
 
* subject = Reference(mpSuliqua100unitsml50microgramsmlsolutionforinjectioninaprefilledpen)


* indication
  * diseaseSymptomProcedure.concept.coding = $meddra#10020772 "Hypertension"



Instance: interaction-bezafibrat
InstanceOf: ClinicalUseDefinition-interaction-uv-epi
Description: "interaction - Bezafibrat"
Usage: #example
* id = "9020c68c-c69f-4b82-b336-aa592a881d8e" 

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "Y9449Q51XH"
* identifier.use = #official

* type = #interaction

// Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet blister x28
 
* subject = Reference(mpSuliqua100unitsml50microgramsmlsolutionforinjectioninaprefilledpen)



* interaction.interactant.itemCodeableConcept = https://gsrs.ncats.nih.gov/ginas/app/beta/#Y9449Q51XH "Bezafibrat"

//* interaction.interactant.itemCodeableConcept.text = "METHOTREXATE"
