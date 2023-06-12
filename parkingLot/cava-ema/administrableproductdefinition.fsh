Instance: adminproductcava75
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "cava 75mg tablet administrable product"
Description: "cava 75 mg tablet"
Usage: #example

* id = "373b9bf3-1fae-47a1-a7cd-230106def069"

* identifier.system = $phpid
* identifier.value = "adminproductcava75" 

* status = #active

//reference to MedicinalProductDefinition: EU/1/97/049/001 cava 75 mg tablet
* formOf = Reference(cava75mgblisterx28)

* administrableDoseForm = $spor-combinedPharmaceuticalDoseForm-cs#200000002152
* administrableDoseForm.text = "Tablet"

* unitOfPresentation = $spor-rms#200000002152
* unitOfPresentation.text = "Tablet"

 // Reference to ManufacturedItemDefinition: Manufactured Item
* producedFrom = Reference(manitemcava75)

* routeOfAdministration.code = $spor-route-cs#100000073619
* routeOfAdministration.code.text = "Oral use"


