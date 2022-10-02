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
  * ^example.valueString = "Oral solution"

* unitOfPresentation from VsUnitofPresentation (preferred)
  * ^example.valueString = "vial"

* producedFrom only Reference(ManufacturedItemDefinitionUvEpi)

* routeOfAdministration 
  * ^example.valueString = "Oral use"
  * code from VsRouteOfAdministration (preferred)

* insert PropertyRulesSet




