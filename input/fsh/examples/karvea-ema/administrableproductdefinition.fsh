Instance: adminproductkarvea75
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Karvea 75mg tablet administrable product"
Description: "Karvea 75 mg tablet"
Usage: #example

* id = "373b9bf3-1fae-47a1-a7cd-230106def069"

* identifier.system = $phpid
* identifier.value = "adminproductkarvea75" 

* status = #active

//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* formOf = Reference(karvea75mgblisterx28)

* administrableDoseForm = $spor-rms#200000002152
* administrableDoseForm.text = "Tablet"

* unitOfPresentation = $spor-rms#200000002152
* unitOfPresentation.text = "Tablet"

 // Reference to ManufacturedItemDefinition: Manufactured Item
* producedFrom = Reference(manitemkarvea75)

* routeOfAdministration.code = $spor-rms#100000073619
* routeOfAdministration.code.text = "Oral use"
* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093
* routeOfAdministration.targetSpecies.code.text = "Human"
