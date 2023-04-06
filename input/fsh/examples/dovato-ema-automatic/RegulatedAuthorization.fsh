
Instance: authorization49178f16170ee8a6bc2a4361c1748d5f
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for Dovato 50 mg/300 mg film-coated tablets"
Description: "Regulated Authorization for Dovato 50 mg/300 mg film-coated tablets"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/19/1370/001"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mp16598f252d07b4784b82ba43cf9e847e)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#eu "European Union"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2019-07-01T13:28:17Z"
// * holder = Reference(sanofiaventisgroupe)
 
 
 


* holder = Reference(org-173fde4cb6b1018cb7ec8ab708d3961c)


 
 
 

