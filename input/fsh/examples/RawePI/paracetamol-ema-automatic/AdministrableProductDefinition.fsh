
Instance: ap-08ac066220d4d68a3933a9c94bef32ff
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product DOLOCATIL 1 g tablets "
Description: "DOLOCATIL 1 g tablets "
Usage: #example

* identifier.system = $phpid
* identifier.value = "xx" 

* status = #active

* formOf = Reference(mpa975b7e209ea5c4c3bf8040a42b86fbd)
* administrableDoseForm = $spor-rms#200000002152 "tablet"
* unitOfPresentation = $spor-rms#200000002152 "tablet"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-08ac066220d4d68a3933a9c94bef32ff)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"