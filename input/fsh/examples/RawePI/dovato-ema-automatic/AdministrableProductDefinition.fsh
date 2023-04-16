
Instance: ap-49178f16170ee8a6bc2a4361c1748d5f
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Dovato 50 mg/300 mg film-coated tablets"
Description: "Dovato 50 mg/300 mg film-coated tablets"
Usage: #example

* identifier.system = $phpid
* identifier.value = "123456" 

* status = #active

* formOf = Reference(mp16598f252d07b4784b82ba43cf9e847e)
* administrableDoseForm = $spor-rms#200000002152 "tablet"
* unitOfPresentation = $spor-rms#200000002152 "tablet"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-49178f16170ee8a6bc2a4361c1748d5f)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"