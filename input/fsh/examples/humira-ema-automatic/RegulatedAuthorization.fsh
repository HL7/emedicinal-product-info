
Instance: authorizationhumira20mgsolutionforinjectioninprefilledsyringe
InstanceOf: RegulatedAuthorizationUvEpi
Title: "Regulated Authorization for Humira 20 mg solution for injection in pre-filled syringe"
Description: "Regulated Authorization for Humira 20 mg solution for injection in pre-filled syringe"
Usage: #example


* id = "e684d7e3-34e8-4c3d-b571-b003a6fbb653" 

* identifier.system = $spor-prod
* identifier.value = "EU/1/03/256/022"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
 //* subject = Reference(karvea75mgblisterx28)
* subject = Reference(mpHumira20mgSolutionforinjectionSubcutaneoususeprefilledsyringeglass)
* type = $spor-rms#100000072062 "Marketing Authorisation"

//* type = $spor-rms#100000072062
//* type.text = "Marketing Authorisation"

* region = urn:iso:std:iso:3166#EU "European Union"


* status = http://hl7.org/fhir/publication-status#active "Active"


* statusDate = "2008-09-08"
// * holder = Reference(sanofiaventisgroupe)
 


* holder = Reference(org-marketingauthorisationholder-abbviedeutschlandgmbhcokg-humira)


 

