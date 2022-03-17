Instance: cfsb3361388689784
InstanceOf: AdministrableProductDefinition
Description: "Suliqua 100 units/ml + 50 micrograms/ml solution for injection in x5 pre-filled pens"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "TBD"
* identifier.use = #official

* status = #active

* formOf = Reference(cfsb1151803027115)

* administrableDoseForm = https://spor.ema.europa.eu/rmswi/#100000073863
* administrableDoseForm.text = "Solution for injection"

* unitOfPresentation = https://spor.ema.europa.eu/rmswi/#/#200000002135
* unitOfPresentation.text = "Pen"

 // Reference to ManufacturedItemDefinition: 30 mg tablet
* producedFrom = Reference(cfsb6176453266374)

* routeOfAdministration.code = https://spor.ema.europa.eu/rmswi/#100000073633
* routeOfAdministration.code.text = "Subcutaneous use"
* routeOfAdministration.targetSpecies.code = https://spor.ema.europa.eu/rmswi/#/#100000109093
* routeOfAdministration.targetSpecies.code.text = "Human"