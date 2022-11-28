
Instance: ap-suliqua100unitsml33microgramsmlsolutionforinjectioninx3prefilledpens
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Suliqua 100 units/ml + 33 micrograms/ml solution for injection in x3 pre-filled pens"
Description: "Suliqua 100 units/ml + 33 micrograms/ml solution for injection in x3 pre-filled pens"
Usage: #example

* id = "60fa600c-99f2-49c8-bb13-802281e43254" 
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