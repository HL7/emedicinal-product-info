Instance: cfsb4325643431772
InstanceOf: ClinicalUseIssue
Description: "Contraindication - Hypersensitivity reaction"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "Hypersensitivity reaction"
* identifier.use = #official

* type = #contraindication

 // Reference to MedicinalProductDefinition: EU/1/16/1157/002 100/50 x5 pre-filled pens
* subject = Reference(cfsb1151803027115)

 // Reference to MedicinalProductDefinition: EU/1/16/1157/003 100/33 x3 pre-filled pens
* subject[1] = Reference(cfsb7123030148537)
