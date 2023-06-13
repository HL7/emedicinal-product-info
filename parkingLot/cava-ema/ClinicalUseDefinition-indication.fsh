Instance: indication
InstanceOf: ClinicalUseDefinitionIndicationUvEpi
Description: "Indication"
Usage: #example

* id = "4e922ec1-a398-4a78-8381-3729422b7602"

* identifier.system = "http://example.org/sid"
* identifier.value = "indication-example-2"


* type = #indication

// Reference to MedicinalProductDefinition: EU/1/97/049/001 cava 75 mg tablet blister x28
* subject = Reference(cava75mgblisterx28)

* indication
  * diseaseSymptomProcedure.concept.coding = $meddra#10020772 "Hypertension"
