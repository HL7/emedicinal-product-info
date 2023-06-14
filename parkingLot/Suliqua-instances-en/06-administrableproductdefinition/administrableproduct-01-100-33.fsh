Instance: cfsb5880516529064
InstanceOf: AdministrableProductDefinition
Description: "Suliqua 100 units/ml + 33 micrograms/ml solution for injection in x3 pre-filled pens"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/"
* identifier.value = "TBD"
* identifier.use = #official

* status = #active

* formOf = Reference(cfsb7123030148537)

* administrableDoseForm = https://spor.ema.europa.eu/rmswi/#100000073863
* administrableDoseForm.text = "Solution for injection"

* unitOfPresentation = https://spor.ema.europa.eu/rmswi/#/#200000002135
* unitOfPresentation.text = "Pen"

 // Reference to ManufacturedItemDefinition: 30 mg tablet
* producedFrom = Reference(cfsb7089233601948)

* routeOfAdministration.code = https://spor.ema.europa.eu/rmswi/#100000073633
* routeOfAdministration.code.text = "Subcutaneous use"

