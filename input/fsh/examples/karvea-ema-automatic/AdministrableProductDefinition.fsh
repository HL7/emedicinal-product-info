
Instance: ap-karvea75mgtablet
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Karvea 75mg tablet"
Description: "Karvea 75mg tablet"
Usage: #example

* identifier.system = $phpid
* identifier.value = "identifier" 

* status = #active

* formOf = Reference(mpKarvea75mgtabletblisterx28)
* administrableDoseForm = $spor-rms#200000002152 "tablet"
* unitOfPresentation = $spor-rms#200000002152 "tablet"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-karvea75mgtablet)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"