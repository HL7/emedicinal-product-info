Instance: interaction
InstanceOf: ClinicalUseDefinitionInteractionUvEpi
Description: "Interaction - METHOTREXATE"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "YL5FZ2Y5U1" //methotrexate
* identifier.use = #official

* type = #interaction

 // Reference to MedicinalProductDefinition: DrugX 75 mg tablet blister x28
* subject = Reference(DrugX75mgblisterx28)