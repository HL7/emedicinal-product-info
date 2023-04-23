
Instance: authorization04c9bd6fb89d38b2d83eced2460c4dc1
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for Flucelvax Tetra - suspension for injection in pre-filled syringe
Influenza vaccine (surface antigen, inactivated, prepared in cell cultures)"
Description: "Regulated Authorization for Flucelvax Tetra - suspension for injection in pre-filled syringe
Influenza vaccine (surface antigen, inactivated, prepared in cell cultures)"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/18/1326/001
"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mpb6ced64d25ea2c8da6c6099386f14db1)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#EU "European Union"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2019-01-01"
// * holder = Reference(sanofiaventisgroupe)
 


* holder = Reference(org-45fe50eae508b5755dd140ab2093eb5e)


 

