
Instance: authorizatione762a2f54b0b24fca4744b1bb7524a5b
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for MIRTAZAPINA CINFA 30 mg Coated Tablet"
Description: "Regulated Authorization for MIRTAZAPINA CINFA 30 mg Coated Tablet"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "67.068"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mp7a7ff0f4e1993c2fdabba6c8d9931a52)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#ES "Spain"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2021-01-01"
// * holder = Reference(sanofiaventisgroupe)
 


* holder = Reference(org-dbf32c7ed470ffbeb6060201f32edb29)


 

