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

* manufacturedDoseForm from VsAdministrableDoseForm (example)

* unitOfPresentation from VsUnitofPresentation (example)

* manufacturer only Reference(OrganizationUvEpi)
* insert PropertyRulesSet
