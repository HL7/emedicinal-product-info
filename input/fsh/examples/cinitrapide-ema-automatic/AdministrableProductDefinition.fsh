
Instance: ap-cinitrapide
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product cinitrapide"
Description: "cinitrapide"
Usage: #example

* id = "0a67b2fb-3f7a-4129-a1c4-ba794e461d05" 
* identifier.system = $phpid
* identifier.value = "identifier" 

* status = #active

* formOf = Reference(mpcinitrapide)
* administrableDoseForm = $spor-rms#200000002152 "tablet"
* unitOfPresentation = $spor-rms#200000002152 "tablet"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-cinitrapide)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"