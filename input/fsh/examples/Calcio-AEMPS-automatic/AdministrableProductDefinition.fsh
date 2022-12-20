
Instance: ap-calciovitaminad3rovi1000mg880uicomprimidosefervescentes
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product CALCIO/VITAMINA D3 ROVI 1000 mg/880 UI COMPRIMIDOS EFERVESCENTES"
Description: "CALCIO/VITAMINA D3 ROVI 1000 mg/880 UI COMPRIMIDOS EFERVESCENTES"
Usage: #example

* id = "2fa59c31-a8d4-4384-a5ca-e6589eb6702f" 
* identifier.system = $phpid
* identifier.value = "xx" 

* status = #active

* formOf = Reference(mpCalcioVitaminaD3ROVI1000mg880UIcomprimidosefervescentes)
* administrableDoseForm = $spor-rms#spor look up "Effervescent tablet"
* unitOfPresentation = $spor-rms#200000002152 "tablet"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-calciovitaminad3rovi1000mg880uicomprimidosefervescentes)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"
