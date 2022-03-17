Instance: cfsb9751995969937
InstanceOf: ClinicalUseDefinition
Description: "Interaction - Bezafibrat"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "Y9449Q51XH"
* identifier.use = #official

* type = #interaction

 // Reference to MedicinalProductDefinition: EU/1/16/1157/002 100/50 x5 pre-filled pens
* subject = Reference(cfsb1151803027115)

 // Reference to MedicinalProductDefinition: EU/1/16/1157/003 100/33 x3 pre-filled pens
* subject[1] = Reference(cfsb7123030148537)

* interaction.interactant.itemCodeableConcept = https://gsrs.ncats.nih.gov/ginas/app/beta/#Y9449Q51XH

* interaction.interactant.itemCodeableConcept.text = "Y9449Q51XH"
