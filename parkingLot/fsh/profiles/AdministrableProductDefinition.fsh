Profile: AdministrableProductDefinitionUvEpi
Parent: AdministrableProductDefinition
Id: AdministrableProductDefinition-uv-epi
Title: "AdministrableProductDefinition (ePI)"
Description: "AdministrableProductDefinition (ePI)"

* identifier 1..*
  * system from VsAdmProductIdSystems (extensible)
  * system 1..1
  * value 1..1

* status ^short = "draft | active | retired |unknown"

* formOf only Reference(MedicinalProductDefinitionUvEpi)

* administrableDoseForm from VsPharmaceuticalDoseForm (preferred)

* unitOfPresentation from VsUnitofPresentation (preferred)

* producedFrom only Reference(ManufacturedItemDefinitionUvEpi)

* routeOfAdministration 
  * code from VsRouteOfAdministration (preferred)

* insert PropertyRulesSet