Instance: UndesirableEffect
InstanceOf: ClinicalUseDefinitionUndesirableEffectUvEpi
Title: "Clinical Use - Undesirable Effect"
Description: "Undesirable Effect example - Psoriasis"
Usage: #example

* id = "4312f8ec-43b6-4b25-9fca-d61a1188bfea"

* identifier.system = $ginas
* identifier.value = "YL5FZ2Y5U1" //methotrexate
* identifier.use = #official

* type = #undesirable-effect

 // Reference to MedicinalProductDefinition: DrugX 75 mg tablet blister x28
* subject = Reference(DrugX75mgblisterx28)

*  undesirableEffect
  * symptomConditionEffect.concept = http://snomed.info/sct#2767007 "Dysergia"
  * frequencyOfOccurrence = http://hl7.org/fhir/undesirable-effect-frequency#Rare "Rare"