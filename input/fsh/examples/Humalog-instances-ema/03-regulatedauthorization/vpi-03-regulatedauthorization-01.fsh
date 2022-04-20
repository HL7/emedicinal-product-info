Instance: cfsb1529720709344
InstanceOf: RegulatedAuthorization
Description: "Regulated Authorization"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/96/007/035"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* subject = Reference(cfsb7543491765740)

* type = $spor-rms#100000072062
* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#eu
* region.text = "European Union"

* status = http://hl7.org/fhir/publication-status#active
* status.text = "Active"

* statusDate = "2015-02-07T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* holder = Reference(cfsb9935015469452)
