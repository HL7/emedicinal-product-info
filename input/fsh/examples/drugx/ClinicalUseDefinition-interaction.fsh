Instance: interaction
InstanceOf: ClinicalUseDefinitionInteractionUvEpi
Title: "Clinical Use - Interaction"
Description: "Interaction example - methotrexate"
Usage: #example

* id = "e60575aa-e7b3-4461-a456-d310514f4041"

* identifier.system = $ginas
* identifier.value = "YL5FZ2Y5U1" //methotrexate
* identifier.use = #official

* type = #interaction

 // Reference to MedicinalProductDefinition: DrugX 75 mg tablet blister x28
* subject = Reference(DrugX75mgblisterx28)

* interaction.interactant.itemCodeableConcept = $ginas#YL5FZ2Y5U1 "METHOTREXATE"