
Instance: authorizationkarvea75mgtablet
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for karvea 75 mg tablet"
Description: "Regulated Authorization for karvea 75 mg tablet"
Usage: #example


* id = "4de48799-ce2c-4865-9ab6-a2614b0534b0" 

* identifier.system = $spor-prod
* identifier.value = "EU/1/96/007/035"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(Karvea75mgtabletblisterx28)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#DK "Denmark"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2015-02-07T13:28:17Z"
// * holder = Reference(sanofiaventisgroupe)
 
* holder = Reference(marketingauthorisationholder-sanofi-aventisgroupe)