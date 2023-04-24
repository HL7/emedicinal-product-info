


Instance: cud-42659cd40ce761bcf6d15bd28423e45f
InstanceOf: ClinicalUseDefinition-indication-uv-epi
Description: "indication - Hypertension"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "Hypertension"
* identifier.use = #official

* type = #indication

// Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet blister x28
 
* subject = Reference(mp367b9089c0743a2330f4c6e82b40ee41)


* indication
  * diseaseSymptomProcedure.concept.coding = $meddra#10020772 "Hypertension"





Instance: cud-7b1263be67675b61a6b6e6f0a5c35389
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
