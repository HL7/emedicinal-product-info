
Instance: ap-suliqua100unitsml33microgramsmlsolutionforinjectioninx3prefilledpens
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Suliqua 100 units/ml + 33 micrograms/ml solution for injection in x3 pre-filled pens"
Description: "Suliqua 100 units/ml + 33 micrograms/ml solution for injection in x3 pre-filled pens"
Usage: #example

* id = "0727e2fa-06b9-4809-b89d-a0928d5e3865" 
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