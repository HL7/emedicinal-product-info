
Instance: ap-blaston1mgtablets
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product BLASTON 1 mg tablets"
Description: "BLASTON 1 mg tablets"
Usage: #example

* identifier.system = $phpid
* identifier.value = "xx" 

* status = #active

* formOf = Reference(mpBLASTON1mgtablets)
* administrableDoseForm = $spor-rms#200000002152 "tablet"
* unitOfPresentation = $spor-rms#200000002152 "tablet"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-cinitrapide)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"