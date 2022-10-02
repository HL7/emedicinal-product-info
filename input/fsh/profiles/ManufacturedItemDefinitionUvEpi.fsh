Profile: ManufacturedItemDefinitionUvEpi
Parent: ManufacturedItemDefinition
Id: ManufacturedItemDefinition-uv-epi
Title: "ManufacturedItemDefinition (ePI)"
Description: "ManufacturedItemDefinition (ePI)"

* identifier 1..
  * system from VsManufacturedItemIdSystems (extensible)
  * system 1..
  * value 1..

* status ^short = "draft|active|retired|unknown"

* manufacturedDoseForm from VsPharmaceuticalDoseForm (preferred)

* unitOfPresentation from VsUnitofPresentation (preferred)

* manufacturer only Reference(OrganizationUvEpi)
* insert PropertyRulesSet
