Instance: authorisation1
InstanceOf: RegulatedAuthorizationUvEpi
Description: "Regulated Authorization"
Usage: #example

* identifier.system = "https://pmda-approvalandlicenseno/"
* identifier.value = "21400AMY00186"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: Aromasin (exemestane) Tablets 25 mg
* subject[+] = Reference(117616c7-3bcc-4665-8e12-0e93447e679e)

* type = https://spor.ema.europa.eu/rmswi/#/#100000072062


* region = urn:iso:std:iso:3166#jp
* region.text = "Japan"

* status = $publication-status#active
* status.text = "Active"

* statusDate = "2002-08-01T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* holder = Reference(7f257409-3b65-401d-a246-7ae51e298fbb)
