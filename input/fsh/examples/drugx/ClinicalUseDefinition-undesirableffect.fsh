Instance: UndesirableEffect
InstanceOf: ClinicalUseDefinitionUndesirableEffectUvEpi
Description: "Undesirable Effect - Psoriasis"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "YL5FZ2Y5U1" //methotrexate
* identifier.use = #official

* type = #undesirable-effect

 // Reference to MedicinalProductDefinition: DrugX 75 mg tablet blister x28
* subject = Reference(DrugX75mgblisterx28)

*  undesirableEffect
  * symptomConditionEffect.concept = http://snomed.info/sct#2767007 "Dysergia"
  * frequencyOfOccurrence = http://hl7.org/fhir/undesirable-effect-frequency#Rare "Rare"