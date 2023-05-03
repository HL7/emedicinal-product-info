
Instance: authorizationdcaa4d32aa6658a8df831551503e52ee
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for karvea 75 mg tablet"
Description: "Regulated Authorization for karvea 75 mg tablet"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/97/049/001"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mpa2bd0171a7654dc24f7eb7e9338e1acc)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#DK "Denmark"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2015-02-07T13:28:17Z"
// * holder = Reference(sanofiaventisgroupe)
 


* holder = Reference(org-fe4fee458a4f24fccb770d311350f67c)


 

