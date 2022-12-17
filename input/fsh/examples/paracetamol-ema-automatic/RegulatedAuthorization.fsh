
Instance: authorizationparacetamol
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for paracetamol"
Description: "Regulated Authorization for paracetamol"
Usage: #example


* id = "74754bdc-58c9-41ec-adba-c80abd111ff9" 

* identifier.system = $spor-prod
* identifier.value = "EU/1/96/007/035"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mpparecetamolamn)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#DK "Denmark"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2015-02-07T13:28:17Z"
// * holder = Reference(sanofiaventisgroupe)
 


* holder = Reference(org-marketingauthorisationholder-acmeindustry-paracetamol)


 

