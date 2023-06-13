Instance: authorizationDrugX75
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for the 75 mg tablet"
Description: "Regulated Authorization for the 75 mg tablet"
Usage: #example

* id = "297e405a-b6f9-4273-bc01-ae031efe47f8"

* identifier.system = $spor-prod
* identifier.value = "authorization75mg"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: DrugX 75 mg tablet
* subject = Reference(DrugX75mgblisterx28)

* type = http://hl7.org/fhir/regulated-authorization-type#MarketingAuth "Marketing Authorization"


* region = urn:iso:std:iso:3166#FR
* region.text = "European Union"

* status = $publication-status#active "Active"

* statusDate = "2015-02-07T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* holder = Reference(acmeinc)
