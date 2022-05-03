Instance: cfsb1650999516847
InstanceOf: AdministrableProductDefinition
Description: "Dovato 50 mg/300 mg film-coated tablets"
Usage: #example

* identifier.system = $phpid
* identifier.value = "123456"

* status = #active

* administrableDoseForm = https://standardterms.edqm.eu/browse/get_concepts_by/SOM/SOM/#10219000
* administrableDoseForm.text = "Tablet"

* unitOfPresentation = https://standardterms.edqm.eu/browse/get_concepts/UOP/#15054000
* unitOfPresentation.text = "Tablet"

* routeOfAdministration.code = https://standardterms.edqm.eu/browse/get_concepts/ROA/#20053000
* routeOfAdministration.code.text = "Oral use"
* routeOfAdministration.targetSpecies.code = https://spor.ema.europa.eu/rmswi/#/#100000109093
* routeOfAdministration.targetSpecies.code.text = "Human"

//reference to EU/1/19/1370/001 Dovato 50 mg/300 mg film-coated tablets
* formOf = Reference(cfsb1650904258324)

 // Reference to ManufacturedItemDefinition: Manufactured Item: Dovato 50 mg/300 mg film-coated tablets
* producedFrom = Reference(cfsb1650998521654)
