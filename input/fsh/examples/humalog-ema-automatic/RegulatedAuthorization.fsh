
Instance: authorizationhumalog
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for Humalog "
Description: "Regulated Authorization for Humalog "
Usage: #example


* id = "8a0d9232-126c-4b05-897b-ef71e6cac927" 

* identifier.system = $spor-prod
* identifier.value = "EU/1/96/007/035"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mpHumalogMix50InsulinKwikPen3mlprefill)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#DK "Denmark"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2015-02-07T13:28:17Z"
// * holder = Reference(sanofiaventisgroupe)
 
 
 


* holder = Reference(org-marketingauthorisationholder-elilillynederlandbv-humalog)


 
 
 

