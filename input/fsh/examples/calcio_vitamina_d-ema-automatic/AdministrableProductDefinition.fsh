
Instance: ap-925dad38f0afbba36223a82b3a766438
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product CALCIO/VITAMINA D3 ROVI 1000 mg/880 UI COMPRIMIDOS EFERVESCENTES"
Description: "CALCIO/VITAMINA D3 ROVI 1000 mg/880 UI COMPRIMIDOS EFERVESCENTES"
Usage: #example

* identifier.system = $phpid
* identifier.value = "xx" 

* status = #active

* formOf = Reference(mpd4bcbbaec04bf6aceb2f71162205967e)
* administrableDoseForm = $spor-rms#100000073681 "Effervescent tablet"
* unitOfPresentation = $spor-rms#200000002152 "tablet"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-925dad38f0afbba36223a82b3a766438)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"