
Instance: authorizationda0fc2395ce219262dfd4f0c9a9f72e1
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for BLASTON 1 mg tablets"
Description: "Regulated Authorization for BLASTON 1 mg tablets"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "59.032"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mp1453e0f16ff6c1d3106ed737a7857578)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#ES "Spain"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2007-09-27"
// * holder = Reference(sanofiaventisgroupe)
 


* holder = Reference(org-94f8082c22713e050c3f2b55ea9d53ff)


 

