
Instance: ap-5aa8042f9b2bea12d814ccaf27f6d64e
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product acmedrug"
Description: "acmedrug"
Usage: #example

* identifier.system = $phpid
* identifier.value = "identifier" 

* status = #active

* formOf = Reference(mp534e209eb0a3ff60437639cb2015316f)
* administrableDoseForm = $spor-rms#200000002152 "tablet"
* unitOfPresentation = $spor-rms#200000002152 "tablet"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-534e209eb0a3ff60437639cb2015316f)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"