Instance: cfsb8699684597483
InstanceOf: ClinicalUseIssue
Description: "Indication"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
// MedDRA: 10067585
// SPOR: 100000072461
* identifier.value = "Type 2 diabetes mellitus"
* identifier.use = #official

* type = #indication

 // Reference to MedicinalProductDefinition: EU/1/16/1157/002 100/50 x5 pre-filled pens
* subject = Reference(cfsb1151803027115)

 // Reference to MedicinalProductDefinition: EU/1/16/1157/003 100/33 x3 pre-filled pens
* subject[1] = Reference(cfsb7123030148537)
