Profile: ManufacturedItemDefinitionUvEpi
Parent: ManufacturedItemDefinition
Id: ManufacturedItemDefinition-uv-epi
Title: "ManufacturedItemDefinition (ePI)"
Description: "ManufacturedItemDefinition (ePI)"
* insert SetFmmandStatusRule ( 2, trial-use )
* identifier 0..

* status ^short = "draft|active|retired|unknown"

* manufacturedDoseForm from VsManufacturedDoseForm (example)

* unitOfPresentation from VsUnitofPresentation (example)

* manufacturer only Reference(OrganizationUvEpi)
* insert PropertyRulesSet
