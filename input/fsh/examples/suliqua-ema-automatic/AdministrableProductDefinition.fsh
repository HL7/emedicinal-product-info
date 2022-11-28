
Instance: adminproductsuliqua100unitsml33microgramsmlsolutionforinjectioninx3prefilledpens
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Suliqua 100 units/ml + 33 micrograms/ml solution for injection in x3 pre-filled pens"
Description: "Suliqua 100 units/ml + 33 micrograms/ml solution for injection in x3 pre-filled pens"
Usage: #example

* id = "cc81f083-40fb-4de3-8950-aeb3d4cf4606" 
* identifier.system = $phpid
* identifier.value = "TBD" 

* status = #active

* formOf = Reference(Suliqua100units/ml+50micrograms/mlsolutionforinjectioninapre-filledpen)
* administrableDoseForm = $spor-rms#100000073863 "Solution for injection"
* unitOfPresentation = $spor-rms#200000002135 "Pen"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(suliqua100units/ml+33micrograms/mlsolutionforinjectioninx3pre-filledpens)


* routeOfAdministration.code = $spor-rms#100000073633 "Subcutaneous use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"