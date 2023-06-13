Instance: authorizationcava75
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for cava 75 mg tablets"
Description: "Regulated Authorization"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "EU/1/96/007/035"
* identifier.use = #official

* id = "297e405a-b6f9-4273-bc01-ae031efe47f8"
 // Reference to MedicinalProductDefinition: EU/1/97/049/001 cava 75 mg tablet
* subject = Reference(cava75mgblisterx28)

* type = EmaSporScope#100000072062 "Marketing Authorization"


* region = urn:iso:std:iso:3166#DK
* region.text = "Denmark"

* status = $publication-status#active
* status.text = "Active"

* statusDate = "2015-02-07T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* holder = Reference(acmeinc)
