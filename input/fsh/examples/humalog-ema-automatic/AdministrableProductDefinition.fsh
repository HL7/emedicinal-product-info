
Instance: ap-a38f06714db0c27b2ba704652e3f08c5
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Humalog Mix50 Insulin KwikPen, 100 U/ml, Suspension for injection 3ml pre-fill"
Description: "Humalog Mix50 Insulin KwikPen, 100 U/ml, Suspension for injection 3ml pre-fill"
Usage: #example

* identifier.system = $phpid
* identifier.value = "humalog-id" 

* status = #active

* formOf = Reference(mpd33868162d255ced115cecbbf188aab4)
* administrableDoseForm = $spor-rms#100000073864 "Suspension for injection"
* unitOfPresentation = $spor-rms#200000002135 "Pen"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-a38f06714db0c27b2ba704652e3f08c5)


* routeOfAdministration.code = $spor-rms#100000073633 "Subcutaneous use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"