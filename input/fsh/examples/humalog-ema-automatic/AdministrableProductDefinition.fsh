
Instance: ap-humalog100uml5prefilledpen
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Humalog 100 U/ml 5 pre-filled pen"
Description: "Humalog 100 U/ml 5 pre-filled pen"
Usage: #example

* identifier.system = $phpid
* identifier.value = "0x073AF2E5B92AE19E8B67635AFFB3D6CA" 

* status = #active

* formOf = Reference(mpHumalogMix50InsulinKwikPen3mlprefill)
* administrableDoseForm = $spor-rms#100000073864 "Suspension for injection"
* unitOfPresentation = $spor-rms#200000002135 "Pen"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-humalog100uml5prefilledpen)


* routeOfAdministration.code = $spor-rms#100000073633 "Subcutaneous use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"