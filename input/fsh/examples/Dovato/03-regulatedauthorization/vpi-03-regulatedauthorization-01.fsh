Instance: cfsb1651148079894
InstanceOf: RegulatedAuthorization
Description: "Regulated authorization"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/19/1370/001"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/19/1370/001 Dovato 50 mg/300 mg film-coated tablets
* subject = Reference(cfsb1650904258324)

* type = $spor-rms#100000072062
* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#eu
* region.text = "European Union"

* status = http://hl7.org/fhir/publication-status#active
* status.text = "Active"

* statusDate = "2019-07-01T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* holder = Reference(cfsb1651149636159)

 // Reference to Organization: Regulator
* regulator = Reference(cfsb1651152112409)
