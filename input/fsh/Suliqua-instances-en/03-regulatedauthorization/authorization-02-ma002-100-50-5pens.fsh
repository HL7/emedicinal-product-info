Instance: cfsb9631820498004
InstanceOf: RegulatedAuthorization
Description: "EU/1/16/1157/002 100/50 x5 pre-filled pens"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "EU/1/16/1157/002"
* identifier.use = #official

 // Reference to MedicinalProductDefinition
* subject = Reference(cfsb1151803027115)

* type = https://spor.ema.europa.eu/rmswi/#/#100000072062
* type.text = "Marketing Authorisation"

* description = "Suliqua 100 units/ml + 50 microgram/ml solution for injection in a pre-filled pen"

* region = urn:iso:std:iso:3166#eu
* region.text = "European Union"

* status = http://hl7.org/fhir/publication-status#active
* status.text = "Active"

* statusDate = "2017-01-11T13:28:17Z"

* validityPeriod.start = "2017-01-11T13:28:17Z"
* validityPeriod.end = ""

 // Reference to Organization: Market Authorization Holder
* holder = Reference(cfsb6005885654359)

 // Reference to Organization: EMA
* regulator = Reference(cfsb1639015880655)
