Profile: ManufacturedItemDefinitionUvEpi
Parent: ManufacturedItemDefinition
Id: ManufacturedItemDefinition-uv-epi
Title: "ManufacturedItemDefinition (ePI)"
Description: "ManufacturedItemDefinition (ePI)"
* insert SetFmmandStatusRule ( 1, Trial-use )
* identifier 1..
  * system 1..
  * value 1..

* status ^short = "draft|active|retired|unknown"

* manufacturedDoseForm from VsManufacturedDoseForm (example)

* unitOfPresentation from VsUnitofPresentation (example)

* manufacturer only Reference(OrganizationUvEpi)
* insert PropertyRulesSet
