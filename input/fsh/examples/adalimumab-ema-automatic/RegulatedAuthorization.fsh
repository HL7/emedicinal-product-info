
Instance: authorization2e8a8b1c9142de3ac8de0723812d3fef
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for adalimumab"
Description: "Regulated Authorization for adalimumab"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/16/1157/002"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mp2e8a8b1c9142de3ac8de0723812d3fef)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#DK "Denmark"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2017-01-11T13:28:17Z"
// * holder = Reference(sanofiaventisgroupe)
 
 
 
 


* holder = Reference(org-b4249a5180d23ad521b23e06e99b7afd)


 
 
 
 

