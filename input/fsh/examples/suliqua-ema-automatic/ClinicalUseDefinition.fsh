
Instance: contraindication-hypersensitivityreaction
InstanceOf: ClinicalUseDefinition-contraindication-uv-epi
Description: "contraindication - Hypersensitivity reaction"
Usage: #example
* id = "3f59a272-23f3-4e78-a4eb-56ecdba0f770" 

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "Hypersensitivity reaction"
* identifier.use = #official

* type = #contraindication

// Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet blister x28
 
* subject = Reference(Suliqua100units/ml+50micrograms/mlsolutionforinjectioninapre-filledpen)

* contraindication
  * diseaseSymptomProcedure.concept.coding = $meddra#nan "Contraindication"



Instance: indication-hypertension
InstanceOf: ClinicalUseDefinition-indication-uv-epi
Description: "indication - Hypertension"
Usage: #example
* id = "de27d445-8b4d-474b-8acf-cfb1107b0f74" 

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "Type 2 diabetes mellitus"
* identifier.use = #official

* type = #indication

// Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet blister x28
 
* subject = Reference(Suliqua100units/ml+50micrograms/mlsolutionforinjectioninapre-filledpen)


* indication
  * diseaseSymptomProcedure.concept.coding = $meddra#10020772 "Hypertension"



Instance: interaction-bezafibrat
InstanceOf: ClinicalUseDefinition-interaction-uv-epi
Description: "interaction - Bezafibrat"
Usage: #example
* id = "b0f4d667-bc1d-463b-87f3-81eb2c1ee6ce" 

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "Y9449Q51XH"
* identifier.use = #official

* type = #interaction

// Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet blister x28
 
* subject = Reference(Suliqua100units/ml+50micrograms/mlsolutionforinjectioninapre-filledpen)



* interaction.interactant.itemCodeableConcept = https://gsrs.ncats.nih.gov/ginas/app/beta/#Y9449Q51XH "Bezafibrat"

//* interaction.interactant.itemCodeableConcept.text = "METHOTREXATE"
