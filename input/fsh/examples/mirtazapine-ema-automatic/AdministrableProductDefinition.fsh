
Instance: ap-mirtazapinacinfa30mgcoatedtablet
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product MIRTAZAPINA CINFA 30 mg Coated Tablet"
Description: "MIRTAZAPINA CINFA 30 mg Coated Tablet"
Usage: #example

* id = "a9084b64-cfb9-4e6c-a6f0-5c653e1e06b4" 
* identifier.system = $phpid
* identifier.value = "identifier" 

* status = #active

* formOf = Reference(mpMIRTAZAPINeCINFA30mgCoatedTablet)
* administrableDoseForm = $spor-rms#100000073380 "Coated tablet"
* unitOfPresentation = $spor-rms#200000002152 "tablet"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-mirtazapinacinfa30mgcoatedtablet)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"