Instance: cfsb1640606978608
InstanceOf: AdministrableProductDefinition
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
* producedFrom = Reference(cfsb1640777487408)

//reference to EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* formOf = Reference(cfsb1641212233583)
