
Instance: authorizationmirtazapinacinfa30mgcoatedtablet
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for MIRTAZAPINA CINFA 30 mg Coated Tablet"
Description: "Regulated Authorization for MIRTAZAPINA CINFA 30 mg Coated Tablet"
Usage: #example


* id = "7e35877f-361d-4a6b-9622-59b7e1d81b0e" 

* identifier.system = $spor-prod
* identifier.value = "67.068"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mpMIRTAZAPINeCINFA30mgCoatedTablet)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#ES "Spain"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2021-01-01"
// * holder = Reference(sanofiaventisgroupe)
 


* holder = Reference(org-marketingauthorisationholder-laboratorioscinfasa-mirtazapine)


 

