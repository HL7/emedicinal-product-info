Instance: adminproductkarvea75
InstanceOf: AdministrableProductDefinition
Description: "Karvea 75 mg tablet"
Usage: #example

* identifier.system = $phpid
* identifier.value = "karveaphpidplaceholder" 

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
