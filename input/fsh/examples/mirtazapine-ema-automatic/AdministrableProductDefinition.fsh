
Instance: ap-e762a2f54b0b24fca4744b1bb7524a5b
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product MIRTAZAPINA CINFA 30 mg Coated Tablet"
Description: "MIRTAZAPINA CINFA 30 mg Coated Tablet"
Usage: #example

* identifier.system = $phpid
* identifier.value = "identifier" 

* status = #active

* formOf = Reference(mp7a7ff0f4e1993c2fdabba6c8d9931a52)
* administrableDoseForm = $spor-rms#100000073380 "Coated tablet"
* unitOfPresentation = $spor-rms#200000002152 "tablet"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-e762a2f54b0b24fca4744b1bb7524a5b)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"