Instance: cfsb1639241034937
InstanceOf: ClinicalUseDefinition
Description: "interaction - CYCLOSPORINE"
Usage: #example

* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "83HN0GTJ6D"
* identifier.use = #official

* type = #interaction

 // Reference to MedicinalProductDefinition: EU/1/17/1201/001 30 mg, 42 blister
* subject = Reference(cfsb1639230499322)

 // Reference to MedicinalProductDefinition: EU/1/17/1201/002 120 mg, 40
* subject[1] = Reference(cfsb1639238291499)

 // Reference to MedicinalProductDefinition: EU/1/17/1201/003 120 mg, 70 blister
* subject[2] = Reference(cfsb1639230646463)

 // Reference to MedicinalProductDefinition: EU/1/17/1201/004 120 mg, 90 blister
* subject[3] = Reference(cfsb1639230697840)

 // Reference to MedicinalProductDefinition: EU/1/17/1201/005 120 mg, 100 blister
* subject[4] = Reference(cfsb1639230722203)

 // Reference to MedicinalProductDefinition: EU/1/17/1201/006 120 mg, 120 blister
* subject[5] = Reference(cfsb1639230742250)

 // Reference to MedicinalProductDefinition: EU/1/17/1201/007 120 mg, 180 blister
* subject[6] = Reference(cfsb1639230766661)

 // Reference to MedicinalProductDefinition: EU/1/17/1201/008 120 mg, 200 blister
* subject[7] = Reference(cfsb1639230793613)

 // Reference to MedicinalProductDefinition: EU/1/17/1201/009 120 mg, 240 blister
* subject[8] = Reference(cfsb1639230826758)

 // Reference to MedicinalProductDefinition: EU/1/17/1201/010 120 mg, 360 blister
* subject[9] = Reference(cfsb1639230887164)

 // Reference to MedicinalProductDefinition: EU/1/17/1201/011 120 mg, 400
* subject[10] = Reference(cfsb1639230903448)

 // Reference to MedicinalProductDefinition: EU/1/17/1201/012 120 mg, 300 blister
* subject[11] = Reference(cfsb1639230862286)

 // Reference to MedicinalProductDefinition: EU/1/17/1201/013 30 mg, 70 blister
* subject[12] = Reference(cfsb1639230548265)

 // Reference to MedicinalProductDefinition: EU/1/17/1201/014 30 mg, 210 blister
* subject[13] = Reference(cfsb1639230598497)

* interaction.interactant.itemCodeableConcept = https://gsrs.ncats.nih.gov/ginas/app/beta/#83HN0GTJ6D

* interaction.interactant.itemCodeableConcept.text = "CYCLOSPORINE"


