
Instance: ap-da0fc2395ce219262dfd4f0c9a9f72e1
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product BLASTON 1 mg tablets"
Description: "BLASTON 1 mg tablets"
Usage: #example

* identifier.system = $phpid
* identifier.value = "xx" 

* status = #active

* formOf = Reference(mp1453e0f16ff6c1d3106ed737a7857578)
* administrableDoseForm = $spor-rms#200000002152 "tablet"
* unitOfPresentation = $spor-rms#200000002152 "tablet"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-af8224f8c853d17daf5ea6782cb5a097)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"