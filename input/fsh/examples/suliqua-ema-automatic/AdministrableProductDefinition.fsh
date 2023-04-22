
Instance: ap-66d97ddf0e95a23a3c0f4f2102139f34
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Suliqua 100 units/ml + 33 micrograms/ml solution for injection in x3 pre-filled pens"
Description: "Suliqua 100 units/ml + 33 micrograms/ml solution for injection in x3 pre-filled pens"
Usage: #example

* identifier.system = $phpid
* identifier.value = "TBD" 

* status = #active

* formOf = Reference(mp367b9089c0743a2330f4c6e82b40ee41)
* administrableDoseForm = $spor-rms#100000073863 "Solution for injection"
* unitOfPresentation = $spor-rms#200000002135 "Pen"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-66d97ddf0e95a23a3c0f4f2102139f34)


* routeOfAdministration.code = $spor-rms#100000073633 "Subcutaneous use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"