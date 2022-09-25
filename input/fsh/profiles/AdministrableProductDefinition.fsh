Profile: AdministrableProductDefinitionUvEpi
Parent: AdministrableProductDefinition
Id: AdministrableProductDefinition-uv-epi
Title: "AdministrableProductDefinition (ePI)"
Description: "AdministrableProductDefinition (ePI)"

* identifier 1..
  * system from VsAdmProductIdSystems (extensible)
  * system 1..
  * value 1..
* status ^short = "draft | active | retired |unknown"

* formOf only Reference(MedicinalProductDefinitionUvEpi)

* administrableDoseForm from VsPharmaceuticalDoseForm (preferred)
  * ^example.label = "Oral solution"

* unitOfPresentation from VsUnitofPresentation (preferred)
  * ^example.label = "vial"

* producedFrom only Reference(ManufacturedItemDefinitionUvEpi)

* routeOfAdministration 
  * ^example.label = "Oral use"
  * code from VsRouteOfAdministration (preferred)

* insert PropertyRulesSet




