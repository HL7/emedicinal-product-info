Profile: AdministrableProductDefinitionUvEpi
Parent: AdministrableProductDefinition
Id: AdministrableProductDefinition-uv-epi
Title: "AdministrableProductDefinition (ePI)"
Description: "AdministrableProductDefinition (ePI)"

* identifier 1..
  * system from VsAdmProductIdSystems (extensible)
  * system 1..
  * value 1..

* formOf only Reference(MedicinalProductDefinitionUvEpi)

// CHANGE TO A VALUE SET BASED DISCRIMINATOR
* administrableDoseForm.coding ^slicing.discriminator[0].type = #value
* administrableDoseForm.coding ^slicing.discriminator[=].path = "system"
* administrableDoseForm.coding ^slicing.rules = #open
* administrableDoseForm.coding contains
    spor 0..*
* administrableDoseForm.coding[spor] ^short = "SPOR (Europe)"
* administrableDoseForm.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
* administrableDoseForm.coding[spor].system = $spor // to be reviewed
* administrableDoseForm.coding[spor].code 1.. 

// CHANGE TO A VALUE SET BASED DISCRIMINATOR
* unitOfPresentation.coding ^slicing.discriminator[0].type = #value
* unitOfPresentation.coding ^slicing.discriminator[=].path = "system"
* unitOfPresentation.coding ^slicing.rules = #open
* unitOfPresentation.coding contains
    spor 0..* 
* unitOfPresentation.coding[spor] ^short = "SPOR (Europe)"
* unitOfPresentation.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
* unitOfPresentation.coding[spor].system = $spor // to be reviewed
* unitOfPresentation.coding[spor].code 1.. 



 // Reference to ManufacturedItemDefinition: 30 mg tablet

* producedFrom only Reference(ManufacturedItemDefinitionUvEpi)

// CHANGE TO A VALUE SET BASED DISCRIMINATOR
* routeOfAdministration.code.coding ^slicing.discriminator[0].type = #value
* routeOfAdministration.code.coding ^slicing.discriminator[=].path = "system"
* routeOfAdministration.code.coding ^slicing.rules = #open
* routeOfAdministration.code.coding contains
    spor 0..* 
* routeOfAdministration.code.coding[spor] ^short = "SPOR (Europe)"
* routeOfAdministration.code.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
* routeOfAdministration.code.coding[spor].system = $spor // to be reviewed
* routeOfAdministration.code.coding[spor].code 1.. 

// CHANGE TO A VALUE SET BASED DISCRIMINATOR
* routeOfAdministration.targetSpecies.code.coding ^slicing.discriminator[0].type = #value
* routeOfAdministration.targetSpecies.code.coding ^slicing.discriminator[=].path = "system"
* routeOfAdministration.targetSpecies.code.coding ^slicing.rules = #open
* routeOfAdministration.targetSpecies.code.coding contains
    spor 0..* 
* routeOfAdministration.targetSpecies.code.coding[spor] ^short = "SPOR (Europe)"
* routeOfAdministration.targetSpecies.code.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
* routeOfAdministration.targetSpecies.code.coding[spor].system = $spor // to be reviewed
* routeOfAdministration.targetSpecies.code.coding[spor].code 1.. 



