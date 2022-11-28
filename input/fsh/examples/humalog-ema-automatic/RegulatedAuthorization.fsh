
Instance: authorizationhumalog
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for Humalog "
Description: "Regulated Authorization for Humalog "
Usage: #example


* id = "cfaef28d-506d-410d-b689-8796b7a4d8c3" 

* identifier.system = $spor-prod
* identifier.value = "EU/1/96/007/035"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mpHumalogMix50InsulinKwikPen3mlprefill)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#eu "European Union"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2015-02-07T13:28:17Z"
// * holder = Reference(sanofiaventisgroupe)
 
 
 


* holder = Reference(org-marketingauthorisationholder-elilillynederlandbv-humalog)


 
 
 

