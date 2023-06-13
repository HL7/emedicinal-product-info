Instance: cfsb1639231000086
InstanceOf: RegulatedAuthorization
Description: "EU/1/17/1201/004  90 - 120 mg"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/rmswi/#/"
* identifier.value = "EU/1/17/1201/004"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/17/1201/004 120 mg, 90 blister
* subject = Reference(cfsb1639230697840)

* type = https://spor.ema.europa.eu/rmswi/#/#100000072062


* description = "Skilarence 120 mg gastro-resistant tablets, 90 tablets in PVC/PVDC-aluminium blister packs"

* region = urn:iso:std:iso:3166#eu
* region.text = "European Union"

* status = http://hl7.org/fhir/publication-status#active
* status.text = "Active"

* statusDate = "2015-02-07T13:28:17Z"

* validityPeriod.start = "2015-02-07T13:28:17Z"
* validityPeriod.end = "2022-02-07T13:28:17Z"

 // Reference to Organization: Market Authorization Holder
* holder = Reference(cfsb1639003145277)

 // Reference to Organization: EMA
* regulator = Reference(cfsb1639015880655)