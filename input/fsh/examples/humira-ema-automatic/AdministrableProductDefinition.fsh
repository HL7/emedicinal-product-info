
Instance: ap-humira20mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Humira 20 mg Solution for injection Subcutaneous use pre-filled syringe (glass)"
Description: "Humira 20 mg Solution for injection Subcutaneous use pre-filled syringe (glass)"
Usage: #example

* id = "56b1bd0e-c906-4e2f-8f96-463bef79c7e2" 
* identifier.system = $phpid
* identifier.value = "nan" 

* status = #active

* formOf = Reference(mpHumira20mgSolutionforinjectionSubcutaneoususeprefilledsyringeglass)
* administrableDoseForm = $spor-rms#11201000 "Solution for injection"
* unitOfPresentation = $spor-rms#15052000 "Syringe"

//this is just manufactured with extra steps?


//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* producedFrom = Reference(mid-humira20mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass)


* routeOfAdministration.code = $spor-rms#20066000 "Subcutaneous use"

* routeOfAdministration.targetSpecies.code = $spor-rms#100000109093 "Human"