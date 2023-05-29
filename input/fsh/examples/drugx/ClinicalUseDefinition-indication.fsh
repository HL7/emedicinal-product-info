Instance: indication
InstanceOf: ClinicalUseDefinitionIndicationUvEpi
Description: "Indication"
Usage: #example
 
* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "Psoriasis"
* identifier.use = #official

* type = #indication

 // Reference to MedicinalProductDefinition: DrugX 75 mg tablet blister x28
* subject = Reference(DrugX75mgblisterx28)

*  indication
  * diseaseSymptomProcedure.concept = $meddra#10037156 "Psoriasis"