Instance: 56b3b73e-dba0-4447-b8cd-1e24ed637017
InstanceOf: RegulatedAuthorizationUvEpi
Description: "Regulated Authorization"
Usage: #example

* identifier.system = "https://fda-approvalandlicenseno/"
* identifier.value = "21400AMY00186"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: Aromasin (exemestane) Tablets 25 mg
* subject[+] = Reference(f1b25777-da7a-4a35-98af-ab18d3246d54)

* type = https://spor.ema.europa.eu/rmswi/#/#100000072062


* region = urn:iso:std:iso:3166#us
* region.text = "United States of America"

* status = $publication-status#active
* status.text = "Active"

* statusDate = "2002-08-01T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* holder = Reference(85c5d81e-9d5a-4a15-8b9d-42bbbe0409c8)
