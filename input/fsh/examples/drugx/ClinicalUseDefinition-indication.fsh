Instance: indication
InstanceOf: ClinicalUseDefinitionIndicationUvEpi
Title: "Clinical Use - Indication"
Description: "Indication example - psoriasis"
Usage: #example

* id = "bac1d528-6430-4310-bde6-b8b3471ce35a"

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "Psoriasis"
* identifier.use = #official

* type = #indication

 // Reference to MedicinalProductDefinition: DrugX 75 mg tablet blister x28
* subject = Reference(DrugX75mgblisterx28)

*  indication
  * diseaseSymptomProcedure.concept = $meddra#10037156 "Psoriasis"