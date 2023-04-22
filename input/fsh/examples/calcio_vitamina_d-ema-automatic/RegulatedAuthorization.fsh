
Instance: authorization925dad38f0afbba36223a82b3a766438
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for CALCIO/VITAMINA D3 ROVI 1000 mg/880 UI COMPRIMIDOS EFERVESCENTES"
Description: "Regulated Authorization for CALCIO/VITAMINA D3 ROVI 1000 mg/880 UI COMPRIMIDOS EFERVESCENTES"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "68290"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mpd4bcbbaec04bf6aceb2f71162205967e)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#ES "Spain"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2012-01-01"
// * holder = Reference(sanofiaventisgroupe)
 


* holder = Reference(org-b7afabe350ac415f70e662ba6c703030)


 

