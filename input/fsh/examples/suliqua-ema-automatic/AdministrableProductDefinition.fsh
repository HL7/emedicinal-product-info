
Instance: ap-suliqua100unitsml33microgramsmlsolutionforinjectioninx3prefilledpens
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Suliqua 100 units/ml + 33 micrograms/ml solution for injection in x3 pre-filled pens"
Description: "Suliqua 100 units/ml + 33 micrograms/ml solution for injection in x3 pre-filled pens"
Usage: #example

* id = "1317ed56-164c-4e43-be2c-6dd027f85d3f" 
* identifier.system = $phpid
* identifier.value = "TBD" 

* status = #active

* formOf = Reference(mpSuliqua100unitsml50microgramsmlsolutionforinjectioninaprefilledpen)
* administrableDoseForm = $spor-rms#100000073863 "Solution for injection"
* unitOfPresentation = $spor-rms#200000002135 "Pen"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-suliqua100unitsml33microgramsmlsolutionforinjectioninx3prefilledpens)


* routeOfAdministration.code = $spor-rms#100000073633 "Subcutaneous use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"