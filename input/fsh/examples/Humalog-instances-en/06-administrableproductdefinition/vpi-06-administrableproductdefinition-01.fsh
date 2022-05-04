Instance: f38a9470-24db-4d2a-b5ea-cace3e38db63
InstanceOf: AdministrableProductDefinitionUvEpi
Description: "Humalog 100 U/ml 5 pre-filled pen"
Usage: #example

* status = #active

* identifier.system = $phpid
* identifier.value = "0x073AF2E5B92AE19E8B67635AFFB3D6CA"

* administrableDoseForm = $spor-rms#100000073864
* administrableDoseForm.text = "Suspension for injection"

* unitOfPresentation = $spor-rms#200000002135
* unitOfPresentation.text = "Pen"

* routeOfAdministration.code = $spor-rms#100000073633
* routeOfAdministration.code.text = "Subcutaneous use"
* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093
* routeOfAdministration.targetSpecies.code.text = "Human"

 // Reference to ManufacturedItemDefinition: Manufactured Item
* producedFrom = Reference(cfd35737-9e60-4604-9132-717615cfaf4c)

//reference to EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* formOf = Reference(fb3d4c9b-3abe-4ef4-9ef8-73dcd1059258)
