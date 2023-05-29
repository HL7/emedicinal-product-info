Instance: contraindication
InstanceOf: ClinicalUseDefinitionContraindicationUvEpi
Description: "Contraindication - Gastrointestinal disorders"
Usage: #example

* id = "83f4a22f-9e5e-4941-9fdb-339a0f1f2055"

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "Gastrointestinal disorders"
* identifier.use = #official

* type = #contraindication

 // Reference to MedicinalProductDefinition: DrugX 75 mg tablet blister x28
* subject = Reference(DrugX75mgblisterx28)

* contraindication
  * diseaseSymptomProcedure.concept = $meddra#10017947 "Gastrointestinal disorders"