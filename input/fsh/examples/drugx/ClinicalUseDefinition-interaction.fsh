Instance: interaction
InstanceOf: ClinicalUseDefinitionInteractionUvEpi
Title: "Clinical Use - Interaction"
Description: "Interaction example - METHOTREXATE"
Usage: #example

* id = "e60575aa-e7b3-4461-a456-d310514f4041"

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "YL5FZ2Y5U1" //methotrexate
* identifier.use = #official

* type = #interaction

 // Reference to MedicinalProductDefinition: DrugX 75 mg tablet blister x28
* subject = Reference(DrugX75mgblisterx28)