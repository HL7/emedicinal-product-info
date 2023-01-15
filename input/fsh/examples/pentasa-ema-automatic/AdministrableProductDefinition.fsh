
Instance: ap-1a7318638ddbbeb084ef416e717b6fdb
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Pentasa Slow Release Tablets 1g"
Description: "Pentasa Slow Release Tablets 1g"
Usage: #example

* identifier.system = $phpid
* identifier.value = "xx" 

* status = #active

* formOf = Reference(mpb3a8d58c709a2281d8ad2a590fe81663)
* administrableDoseForm = $spor-rms#10226000 "Prolonged-release tablet"
* unitOfPresentation = $spor-rms#200000002152 "tablet"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-1a7318638ddbbeb084ef416e717b6fdb)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"