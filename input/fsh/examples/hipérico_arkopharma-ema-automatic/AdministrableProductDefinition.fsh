
Instance: ap-29436a85dac3ea374adb3fa64cfd2578
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product HIPÉRICO ARKOPHARMA cápsulas duras"
Description: "HIPÉRICO ARKOPHARMA cápsulas duras"
Usage: #example

* identifier.system = $phpid
* identifier.value = "xx" 

* status = #active

* formOf = Reference(mpaf8d2f6e4772c29a8ef9fbb165e80d28)
* administrableDoseForm = $spor-rms#100000073681 "Hard capsules"
* unitOfPresentation = $spor-rms#200000002152 "hard capsule"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-29436a85dac3ea374adb3fa64cfd2578)


* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"