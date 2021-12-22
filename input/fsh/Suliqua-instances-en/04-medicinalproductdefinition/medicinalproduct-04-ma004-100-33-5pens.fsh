Instance: cfsb2465733200732
InstanceOf: MedicinalProductDefinition
Description: "EU/1/16/1157/004 100/33 x5 pre-filled pens"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "EU/1/16/1157/004"
* identifier.use = #official

* type = https://spor.ema.europa.eu/rmswi/#/#100000072062
* type.text = "Marketing Authorisation"

* domain = https://spor.ema.europa.eu/rmswi/#/#100000000012
* domain.text = "Human use"

* version = "1"

* status = http://hl7.org/fhir/publication-status#active "Active"

// Reference to AdministrableProductDefinition:
* administrableProduct.product = Reference(cfsb5880516529064)

// Reference to PackagedProductDefinition:
* package.package = Reference(cfsb1486913103265)
