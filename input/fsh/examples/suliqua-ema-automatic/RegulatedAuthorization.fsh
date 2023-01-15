
Instance: authorizationa9517814b36bf7381b0a946a09cda2e4
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for Suliqua 100 units/ml + 50 microgram/ml solution for injection in a pre-filled pen"
Description: "Regulated Authorization for Suliqua 100 units/ml + 50 microgram/ml solution for injection in a pre-filled pen"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/16/1157/002"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mp367b9089c0743a2330f4c6e82b40ee41)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#DK "Denmark"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2017-01-11T13:28:17Z"
// * holder = Reference(sanofiaventisgroupe)
 
 
 
 


* holder = Reference(org-16019cea3a857659d2c5a2018c2260df)


 
 
 
 

