Profile: AdministrableProductDefinitionUvEpi
Parent: AdministrableProductDefinition
Id: AdministrableProductDefinition-uv-epi
Title: "AdministrableProductDefinition (ePI)"
Description: "AdministrableProductDefinition (ePI)"

* insert SetFmmandStatusRule ( 2, trial-use )
* identifier 1..*
  * system 1..1
  * value 1..1

* status ^short = "draft | active | retired |unknown"

* formOf only Reference(MedicinalProductDefinitionUvEpi)

* administrableDoseForm from VsAdministrableDoseForm (example)

* unitOfPresentation from VsUnitofPresentation (example)

* producedFrom only Reference(ManufacturedItemDefinitionUvEpi)

* routeOfAdministration 
  * code from VsRouteOfAdministration (example)

* insert PropertyRulesSet