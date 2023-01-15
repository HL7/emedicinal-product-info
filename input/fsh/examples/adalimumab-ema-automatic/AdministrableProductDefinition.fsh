
Instance: ap-2e8a8b1c9142de3ac8de0723812d3fef
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product adalimumab"
Description: "adalimumab"
Usage: #example

* identifier.system = $phpid
* identifier.value = "TBD" 

* status = #active

* formOf = Reference(mp2e8a8b1c9142de3ac8de0723812d3fef)
* administrableDoseForm = $spor-rms#100000073863 "Solution for injection"
* unitOfPresentation = $spor-rms#200000002135 "Pen"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-2e8a8b1c9142de3ac8de0723812d3fef)


* routeOfAdministration.code = $spor-rms#100000073633 "Subcutaneous use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"