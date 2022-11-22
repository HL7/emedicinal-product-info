Instance: authorizationkarvea75
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for Karvea 75 mg tablets"
Description: "Regulated Authorization"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/96/007/035"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* subject = Reference(urn:uuid:800a51a2-d81d-49a4-a4eb-f2417d301837)

* type = $spor-rms#100000072062
* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#DK
* region.text = "Denmark"

* status = http://hl7.org/fhir/publication-status#active
* status.text = "Active"

* statusDate = "2015-02-07T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* holder = Reference(urn:uuid:d71bf884-90eb-47f9-81b7-fa81ecec7e75)
