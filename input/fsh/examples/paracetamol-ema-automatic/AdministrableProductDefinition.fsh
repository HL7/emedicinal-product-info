
Instance: ap-paracetamol
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product paracetamol"
Description: "paracetamol"
Usage: #example

* id = "ca719992-e779-49e7-bcce-b37dde82709f" 
* identifier.system = $phpid
* identifier.value = "identifier" 

* status = #active

* formOf = Reference(mpparecetamolamn)
* administrableDoseForm = $spor-rms#200000002152 "tablet"
* unitOfPresentation = $spor-rms#200000002152 "tablet"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-paracetamol)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"