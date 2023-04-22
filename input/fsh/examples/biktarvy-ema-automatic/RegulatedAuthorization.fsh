
Instance: authorization14ba4cb05b11f838919ef39edd3e0cdf
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for Biktarvy 50 mg/200 mg/25 mg film-coated tablets"
Description: "Regulated Authorization for Biktarvy 50 mg/200 mg/25 mg film-coated tablets"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/18/1289/001"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mp5fb1761a0a38bea0a9b49f146371c68b)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#eu "European Union"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2018-06-21T13:28:17Z"
// * holder = Reference(sanofiaventisgroupe)
 
 


* holder = Reference(org-715f8a161ed438d0584510e5b4512caa)


 
 

