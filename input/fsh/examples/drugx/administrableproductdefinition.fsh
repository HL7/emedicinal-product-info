Instance: adminproductDrugX75
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable Product for DrugX 75 mg tablets"
Description: "DrugX 75 mg tablet"
Usage: #example

* id = "373b9bf3-1fae-47a1-a7cd-230106def069"

* identifier.system = $phpid
* identifier.value = "DrugXphpidplaceholder" 

* status = #active

//reference to MedicinalProductDefinition: EU/1/97/049/001 DrugX 75 mg tablet
* formOf = Reference(DrugX75mgblisterx28)

* administrableDoseForm = $administrable-dose-form#100000073664 "Tablet"
* unitOfPresentation = $unit-of-presentation#200000002152 "Tablet"


 // Reference to ManufacturedItemDefinition: Manufactured Item
* producedFrom = Reference(manitemDrugX75)

* routeOfAdministration.code = $sct#26643006 "Oral route"