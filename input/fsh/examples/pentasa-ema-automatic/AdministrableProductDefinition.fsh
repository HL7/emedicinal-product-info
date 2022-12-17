
Instance: ap-pentasaslowreleasetablets1g
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Pentasa Slow Release Tablets 1g"
Description: "Pentasa Slow Release Tablets 1g"
Usage: #example

* id = "e4fd1684-4798-4195-85fc-5ff1b93f8165" 
* identifier.system = $phpid
* identifier.value = "xx" 

* status = #active

* formOf = Reference(mpPentasaSlowReleaseTablets1g)
* administrableDoseForm = $spor-rms#10226000 "Prolonged-release tablet"
* unitOfPresentation = $spor-rms#200000002152 "tablet"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-pentasaslowreleasetablets1g)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"