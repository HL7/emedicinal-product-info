
Instance: ap-dolocatil1gtablets
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product DOLOCATIL 1 g tablets "
Description: "DOLOCATIL 1 g tablets "
Usage: #example

* id = "6232b85b-b625-4566-b8d9-d85e423cd889" 
* identifier.system = $phpid
* identifier.value = "xx" 

* status = #active

* formOf = Reference(mpDOLOCATIL1gtablets)
* administrableDoseForm = $spor-rms#200000002152 "tablet"
* unitOfPresentation = $spor-rms#200000002152 "tablet"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-dolocatil1gtablets)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"