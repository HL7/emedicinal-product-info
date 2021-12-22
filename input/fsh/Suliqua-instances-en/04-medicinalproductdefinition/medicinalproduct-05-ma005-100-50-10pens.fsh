Instance: cfsb3808708206644
InstanceOf: MedicinalProductDefinition
Description: "EU/1/16/1157/005 100/50 x10 pre-filled pens"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "EU/1/16/1157/005"
* identifier.use = #official

* type = https://spor.ema.europa.eu/rmswi/#/#100000072062
* type.text = "Marketing Authorisation"

* domain = https://spor.ema.europa.eu/rmswi/#/#100000000012
* domain.text = "Human use"

* version = "1"

* status = http://hl7.org/fhir/publication-status#active "Active"

// Reference to AdministrableProductDefinition:
* administrableProduct.product = Reference(cfsb3361388689784)

// Reference to PackagedProductDefinition:
* package.package = Reference(cfsb9907126469410)
