Instance: undesirableEffectanemia
InstanceOf: ClinicalUseDefinition-undesirableEffect-uv-epi
Description: "Undesirable Effect - anemia"
Usage: #example

* identifier.system = "http://example.org/sid"
* identifier.value = "effect-example-1"

* type = #undesirable-effect

// Reference to MedicinalProductDefinition: EU/1/97/049/001 cava 75 mg tablet blister x28
* subject = Reference(cava75mgblisterx28)

* undesirableEffect
  * symptomConditionEffect.concept.coding = $meddra#10002272 "Anemia"
