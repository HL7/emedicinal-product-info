Instance: undesirableEffectanemia
InstanceOf: ClinicalUseDefinition-undesirableEffect-uv-epi
Description: "Undesirable Effect - anemia"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/rmswi#"
* identifier.value = "anemia"
* identifier.use = #official

* type = #undesirable-effect

// Reference to MedicinalProductDefinition: EU/1/97/049/001 cava 75 mg tablet blister x28
* subject = Reference(cava75mgblisterx28)

* undesirableEffect
  * symptomConditionEffect.concept.coding = $meddra#10002272 "Anemia"
