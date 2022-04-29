Instance: c5b74d97-ed74-4709-a30e-c061f0f1e21f
InstanceOf: AdministrableProductDefinition
Description: "Humalog 100 U/ml 5 pre-filled pen"
Title: "Humalog 100 U/ml 5 pre-filled pen"
Usage: #example

* status = #active

* identifier.system = $phpid
* identifier.value = "0x073AF2E5B92AE19E8B67635AFFB3D6CA" 
* administrableDoseForm = $sct#385220007
* administrableDoseForm.text = "Suspension for injection"

* unitOfPresentation = $sct#733006000
* unitOfPresentation.text = "Pen"

* routeOfAdministration.code = $sct#34206005
* routeOfAdministration.code.text = "Subcutaneous use"
* routeOfAdministration.targetSpecies.code = $sct#278412004
* routeOfAdministration.targetSpecies.code.text = "Human"

 // Reference to ManufacturedItemDefinition: Manufactured Item
* producedFrom = Reference(9e08ee95-3a63-4f09-9ada-d0b9773ccc80)

//reference to EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* formOf = Reference(6200a0a8-2fc1-46d4-aa66-2a98ac0cabc2)
