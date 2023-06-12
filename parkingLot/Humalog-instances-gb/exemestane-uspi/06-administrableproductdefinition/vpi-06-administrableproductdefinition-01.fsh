Instance: 8cf05f7c-481d-4bd6-9a7c-9ca3275601c3
InstanceOf: AdministrableProductDefinitionUvEpi
Description: "Aromasin (exemestane) Tablets 25 mg"
Usage: #example

* identifier.system = $phpid
* identifier.value = "0x712653c26276d3c31c11a7c198246a38" // PHPID 

* status = #active

//reference to MEDICINAL PRODUCT
* formOf = Reference(f1b25777-da7a-4a35-98af-ab18d3246d54)

* administrableDoseForm = $spor-rms#10219000
* administrableDoseForm.text = "Tablet"

* unitOfPresentation = $spor-rms#15054000
* unitOfPresentation.text = "Tablet"

* routeOfAdministration.code = $spor-rms#20053000
* routeOfAdministration.code.text = "Oral use"



 // Reference to ManufacturedItemDefinition: Manufactured Item
* producedFrom = Reference(23fed712-2d60-461d-83a6-5fb939b2a939)


