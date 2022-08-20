Instance: cfsb3624842689213
InstanceOf: AdministrableProductDefinition
Description: "Humalog 100 U/ml 5 pre-filled pen"
Usage: #example

* identifier.system = $phpid
* identifier.value = "0x073AF2E5B92AE19E8B67635AFFB3D6CA" 

* status = #active

//reference to MedicinalProductDefinition: EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* formOf = Reference(cfsb7543491765740)

* administrableDoseForm = $spor-rms#100000073864
* administrableDoseForm.text = "Suspension for injection"

* unitOfPresentation = $spor-rms#200000002135
* unitOfPresentation.text = "Pen"

 // Reference to ManufacturedItemDefinition: Manufactured Item
* producedFrom = Reference(cfsb1210909903210)

* routeOfAdministration.code = $spor-rms#100000073633
* routeOfAdministration.code.text = "Subcutaneous use"
* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093
* routeOfAdministration.targetSpecies.code.text = "Human"
