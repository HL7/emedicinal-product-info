Instance: cfsb1640606978608
InstanceOf: AdministrableProductDefinition
Description: "Humalog 100 U/ml 5 pre-filled pen"
Usage: #example
 

* administrableDoseForm = https://spor.ema.europa.eu/rmswi/#/#100000073864
* administrableDoseForm.text = "Suspension for injection"

* unitOfPresentation = https://spor.ema.europa.eu/rmswi/#/#200000002135
* unitOfPresentation.text = "Pen"

* routeOfAdministration.code = https://spor.ema.europa.eu/rmswi/#/#100000073633
* routeOfAdministration.code.text = "Subcutaneous use"
* routeOfAdministration.targetSpecies.code = https://spor.ema.europa.eu/rmswi/#/#100000109093
* routeOfAdministration.targetSpecies.code.text = "Human"

 // Reference to ManufacturedItemDefinition: Manufactured Item
* producedFrom = Reference(cfsb1640777487408)

 // Reference to MedicinalProductDefinition: EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* subject = Reference(cfsb1641212233583)
