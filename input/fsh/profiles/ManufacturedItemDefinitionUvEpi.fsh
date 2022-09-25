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
  * ^example.label = "Powder for oral solution"

* unitOfPresentation from VsUnitofPresentation (preferred)
  * ^example.label = "Vial"

* manufacturer only Reference(OrganizationUvEpi)
* insert PropertyRulesSet
