
Instance: authorizationpentasa1gprolongedreleasetablet
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for PENTASA 1g Prolonged-release tablet"
Description: "Regulated Authorization for PENTASA 1g Prolonged-release tablet"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "77022"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mpPentasaSlowReleaseTablets1g)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#ES "Spain"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2021-01-01"
// * holder = Reference(sanofiaventisgroupe)
 


* holder = Reference(org-6ade044addd6563de0baefebb1cceb8e)


 

