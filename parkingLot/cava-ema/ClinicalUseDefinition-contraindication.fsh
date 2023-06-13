Instance: contraindication
InstanceOf: ClinicalUseDefinition-contraindication-uv-epi
Description: "Contraindication - Gastrointestinal disorders"
Usage: #example

* id = "83f4a22f-9e5e-4941-9fdb-339a0f1f2055"

* identifier.system = "http://example.org/sid"
* identifier.value = "contra-example-2"


* type = #contraindication

// Reference to MedicinalProductDefinition: EU/1/97/049/001 cava 75 mg tablet blister x28
* subject = Reference(cava75mgblisterx28)

* contraindication
  * diseaseSymptomProcedure.concept.coding = $meddra#10012601 "Diabetis Mellitus"