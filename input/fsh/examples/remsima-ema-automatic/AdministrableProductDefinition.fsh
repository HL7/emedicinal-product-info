
Instance: ap-e3e5e78d4e002ed9e15b925cd546e20b
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Remsima 100 mg powder for concentrate for solution for infusion"
Description: "Remsima 100 mg powder for concentrate for solution for infusion"
Usage: #example

* identifier.system = $phpid
* identifier.value = "EU/1/13/853/001" 

* status = #active

* formOf = Reference(mpbe76bdf784deea6950583b234f789db2)
* administrableDoseForm = $spor-rms#100000074029 "Powder for concentrate for solution for infusion"
* unitOfPresentation = $spor-rms#200000002158 "Vial"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-e3e5e78d4e002ed9e15b925cd546e20b)


* routeOfAdministration.code = $spor-rms#100000073611 "Intravenous use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"