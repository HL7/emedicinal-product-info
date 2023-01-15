
Instance: authorizationdolocatil1gtablets
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for DOLOCATIL 1 g tablets "
Description: "Regulated Authorization for DOLOCATIL 1 g tablets "
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "72.741"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mpDOLOCATIL1gtablets)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#ES "Spain"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2010-10-01"
// * holder = Reference(sanofiaventisgroupe)
 


* holder = Reference(org-marketingauthorisationholder-ferrerinternacionalsa-paracetamol)


 

