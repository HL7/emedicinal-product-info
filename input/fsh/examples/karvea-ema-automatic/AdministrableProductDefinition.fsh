
Instance: ap-dcaa4d32aa6658a8df831551503e52ee
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Karvea 75mg tablet"
Description: "Karvea 75mg tablet"
Usage: #example

* identifier.system = $phpid
* identifier.value = "EU/1/97/049/001" 

* status = #active

* formOf = Reference(mpa2bd0171a7654dc24f7eb7e9338e1acc)
* administrableDoseForm = $spor-rms#200000002152 "tablet"
* unitOfPresentation = $spor-rms#200000002152 "tablet"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-dcaa4d32aa6658a8df831551503e52ee)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"