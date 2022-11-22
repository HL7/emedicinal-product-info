Instance: interactionmethotrexate
InstanceOf: ClinicalUseDefinition-interaction-uv-epi
Description: "Interaction - METHOTREXATE"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "YL5FZ2Y5U1"
* identifier.use = #official

* type = #interaction

// Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet blister x28
* subject = Reference(urn:uuid:800a51a2-d81d-49a4-a4eb-f2417d301837)

* interaction.interactant.itemCodeableConcept = https://gsrs.ncats.nih.gov/ginas/app/beta/#YL5FZ2Y5U1

* interaction.interactant.itemCodeableConcept.text = "METHOTREXATE"

