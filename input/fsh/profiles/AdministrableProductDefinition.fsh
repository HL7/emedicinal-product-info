Profile: AdministrableProductDefinitionUvEpi
Parent: AdministrableProductDefinition
Id: AdministrableProductDefinition-uv-epi
Title: "AdministrableProductDefinition (ePI)"
Description: "AdministrableProductDefinition (ePI)"

* identifier 1..
  * system from VsAdmProductIdSystems (extensible)
  * system 1..
  * value 1..

/* ==
* identifier 1..
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[=].path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    spor 0..* and
	phpid 0..* MS
	
* identifier[spor] ^short = "SPOR (Europe)"
* identifier[spor] ^definition = "SPOR (Europe)" // to be reviewed
* identifier[spor].system = $spor-prod // to be reviewed
* identifier[spor].value ^short = "Administrable Product ID" // to be reviewed
* identifier[spor].use = #official

* identifier[phpid] ^short = "IDMP PhPID"
* identifier[phpid] ^definition = "IDMP PhPID" // to be reviewed
* identifier[phpid].system = $phpid
* identifier[phpid].value ^short = "IDMP PhPID" // to be reviewed
* identifier[phpid].use = #official

== */

// * formOf MS
* formOf only Reference(MedicinalProductDefinitionUvEpi)

// CHANGE TO A VALUE SET BASED DISCRIMINATOR
* administrableDoseForm.coding ^slicing.discriminator[0].type = #value
* administrableDoseForm.coding ^slicing.discriminator[=].path = "system"
* administrableDoseForm.coding ^slicing.rules = #open
* administrableDoseForm.coding contains
    spor 0..* MS
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
// * producedFrom MS
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



