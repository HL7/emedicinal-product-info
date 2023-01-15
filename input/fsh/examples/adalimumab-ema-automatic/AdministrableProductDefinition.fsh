
Instance: ap-adalimumab
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product adalimumab"
Description: "adalimumab"
Usage: #example

* identifier.system = $phpid
* identifier.value = "TBD" 

* status = #active

* formOf = Reference(mpadalimumab)
* administrableDoseForm = $spor-rms#100000073863 "Solution for injection"
* unitOfPresentation = $spor-rms#200000002135 "Pen"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-adalimumab)


* routeOfAdministration.code = $spor-rms#100000073633 "Subcutaneous use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"