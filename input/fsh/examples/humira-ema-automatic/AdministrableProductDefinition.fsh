
Instance: ap-9b5b17469311c2ea4d1d08419748b4fb
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Humira 40 mg Solution for injection Subcutaneous use pre-filled syringe (glass)"
Description: "Humira 40 mg Solution for injection Subcutaneous use pre-filled syringe (glass)"
Usage: #example

* identifier.system = $phpid
* identifier.value = "nan" 

* status = #active

* formOf = Reference(mpf97db27e6330f77484eb8425ad2913cd)
* administrableDoseForm = $spor-rms#11201000 "Solution for injection"
* unitOfPresentation = $spor-rms#15052000 "Syringe"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-9b5b17469311c2ea4d1d08419748b4fb)


* routeOfAdministration.code = $spor-rms#20066000 "Subcutaneous use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"