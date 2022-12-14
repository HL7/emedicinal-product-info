
Instance: ap-humira20mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass
InstanceOf: AdministrableProductDefinitionUvEpi
Title: "Administrable product Humira 20 mg Solution for injection Subcutaneous use pre-filled syringe (glass)"
Description: "Humira 20 mg Solution for injection Subcutaneous use pre-filled syringe (glass)"
Usage: #example

* id = "57f5ff3c-c26d-4d44-bbf4-6cc7aefb80bd" 
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