Instance: cfsb8828832246392
InstanceOf: RegulatedAuthorization
Description: "EU/1/16/1157/001 100/50 x3 pre-filled pens"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "EU/1/16/1157/001"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: TODO
* subject = Reference(TODO)

* type = https://spor.ema.europa.eu/rmswi/#/#100000072062
* type.text = "Marketing Authorisation"

* description = "TODO"

* region = urn:iso:std:iso:3166#eu
* region.text = "European Union"

* status = http://hl7.org/fhir/publication-status#active
* status.text = "Active"

* statusDate = ""

* validityPeriod.start = ""
* validityPeriod.end = ""

 // Reference to Organization: Market Authorization Holder
* holder = Reference(cfsb6005885654359)

 // Reference to Organization: EMA
* regulator = Reference(cfsb1639015880655)
