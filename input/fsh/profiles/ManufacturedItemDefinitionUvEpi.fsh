Profile: ManufacturedItemDefinitionUvEpi
Parent: ManufacturedItemDefinition
Id: ManufacturedItemDefinition-uv-epi
Title: "ManufacturedItemDefinition (ePI)"
Description: "ManufacturedItemDefinition (ePI)"

* identifier 1..
  * system
  * system 1..
  * value 1..

* status ^short = "draft|active|retired|unknown"

* manufacturedDoseForm from VsAdministrableDoseForm (preferred)

* unitOfPresentation from VsUnitofPresentation (preferred)

* manufacturer only Reference(OrganizationUvEpi)
* insert PropertyRulesSet
