Instance: 15c6f86f-8665-4bd6-86da-a3a61fe16084
InstanceOf: RegulatedAuthorization
Description: "Regulated Authorization"
Usage: #example

* identifier.system = "https://pmda-approvalandlicenseno/"
* identifier.value = "21400AMY00186"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: Aromasin (exemestane) Tablets 25 mg
* subject = Reference(117616c7-3bcc-4665-8e12-0e93447e679e)

// Reference to the PackagedProductDefinition: 28 tablets (14x2)
* subject = Reference(bb536b04-39f1-4e0a-a723-e9079fd5e994)

// Reference to the PackagedProductDefinition: 140 tablets (14x10)
* subject = Reference(39307d03-7ff4-4c0d-9326-36de7beb7cad)

* type = https://spor.ema.europa.eu/rmswi/#/#100000072062
* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#jp
* region.text = "Japan"

* status = http://hl7.org/fhir/publication-status#active
* status.text = "Active"

* statusDate = "2002-08-01T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* holder = Reference(7f257409-3b65-401d-a246-7ae51e298fbb)
