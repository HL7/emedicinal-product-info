
Instance: ap-14ba4cb05b11f838919ef39edd3e0cdf
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Biktarvy 50 mg/200 mg/25 mg film-coated tablets"
Description: "Biktarvy 50 mg/200 mg/25 mg film-coated tablets"
Usage: #example

* identifier.system = $phpid
* identifier.value = "EU/1/18/1289/001" 

* status = #active

* formOf = Reference(mp5fb1761a0a38bea0a9b49f146371c68b)
* administrableDoseForm = $spor-rms#10219000 "Tablet"
* unitOfPresentation = $spor-rms#nan "nan"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-14ba4cb05b11f838919ef39edd3e0cdf)


* routeOfAdministration.code = $spor-rms#20053000 "Oral use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"