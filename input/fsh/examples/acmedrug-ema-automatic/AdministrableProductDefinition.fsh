
Instance: ap-acmedrug
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product acmedrug"
Description: "acmedrug"
Usage: #example

* id = "cbe8942d-9ec9-4025-99fe-573bdf1a55b6" 
* identifier.system = $phpid
* identifier.value = "identifier" 

* status = #active

* formOf = Reference(mpacmedrugman)
* administrableDoseForm = $spor-rms#200000002152 "tablet"
* unitOfPresentation = $spor-rms#200000002152 "tablet"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-acmedrugman)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"