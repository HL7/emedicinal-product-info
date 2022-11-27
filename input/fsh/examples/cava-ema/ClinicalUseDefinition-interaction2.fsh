Instance: interactiongrapefruitjuice
InstanceOf: ClinicalUseDefinitionInteractionUvEpi
Description: "Interaction - GRAPEFRUIT JUICE"
Usage: #example

* id = "f7d8f2a0-27eb-4e37-8036-58f3d5aa6537"
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "JQ9EK2H6BG"
* identifier.use = #official

* type = #interaction

// Reference to MedicinalProductDefinition: EU/1/97/049/001 cava 75 mg tablet blister x28
* subject = Reference(cava75mgblisterx28)

* interaction.interactant.itemCodeableConcept = https://gsrs.ncats.nih.gov/ginas/app/beta/#JQ9EK2H6BG

* interaction.interactant.itemCodeableConcept.text = "GRAPEFRUIT JUICE"

