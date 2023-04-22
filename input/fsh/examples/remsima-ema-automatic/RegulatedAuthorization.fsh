
Instance: authorizatione3e5e78d4e002ed9e15b925cd546e20b
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for Remsima 100 mg powder for concentrate for solution for infusion"
Description: "Regulated Authorization for Remsima 100 mg powder for concentrate for solution for infusion"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/13/853/001"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mpbe76bdf784deea6950583b234f789db2)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#eu "European Union"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2018-06-21"
// * holder = Reference(sanofiaventisgroupe)
 
 


* holder = Reference(org-3c850a69e5187931f2198c5e63f933fe)


 
 

