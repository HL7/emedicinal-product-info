Instance: contraindication
InstanceOf: ClinicalUseDefinition-contraindication-uv-epi
Description: "Contraindication - Gastrointestinal disorders"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "Gastrointestinal disorders"
* identifier.use = #official

* type = #contraindication

// Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet blister x28
* subject = Reference(karvea75mgblisterx28)

* contraindication
  * diseaseSymptomProcedure.concept.coding = $meddra#10012601 "Diabetis Mellitus"