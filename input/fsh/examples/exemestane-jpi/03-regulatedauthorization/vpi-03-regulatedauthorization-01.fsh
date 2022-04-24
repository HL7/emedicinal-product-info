Instance: cfsb1640870220343
InstanceOf: RegulatedAuthorization
Description: "Regulated Authorization"
Usage: #example

* identifier.system = "https://pmda-approvalandlicenseno/"
* identifier.value = "21400AMY00186"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: Aromasin (exemestane) Tablets 25 mg
* subject = Reference(cfsb1641212233583)

// Reference to the PackagedProductDefinition: 28 tablets (14x2)
* subject = Reference(cfsb1640781499340)

// Reference to the PackagedProductDefinition: 140 tablets (14x10)
* subject = Reference(cfsb1640781499341)

* type = https://spor.ema.europa.eu/rmswi/#/#100000072062
* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#jp
* region.text = "Japan"

* status = http://hl7.org/fhir/publication-status#active
* status.text = "Active"

* statusDate = "2002-08-01T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* holder = Reference(cfsb1640870284639)
