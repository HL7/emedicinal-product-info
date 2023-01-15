
Instance: authorization08ac066220d4d68a3933a9c94bef32ff
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for DOLOCATIL 1 g tablets "
Description: "Regulated Authorization for DOLOCATIL 1 g tablets "
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "72.741"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mpa975b7e209ea5c4c3bf8040a42b86fbd)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#ES "Spain"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2010-10-01"
// * holder = Reference(sanofiaventisgroupe)
 


* holder = Reference(org-65db33d6be47a433e6e9e9c2980ea7a4)


 

