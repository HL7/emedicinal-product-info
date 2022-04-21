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

// ADD VALUE SETS
* administrableDoseForm ^example.label = "SPOR example"
* administrableDoseForm ^example.valueCodeableConcept = $spor-rms#100000073646 "Oral solution"


// ADD VALUE SETS
* unitOfPresentation ^example.label = "SPOR example"
* unitOfPresentation ^example.valueCodeableConcept = $spor-rms#200000002145 "Spoonful"

// Reference to ManufacturedItemDefinition: 30 mg tablet

* producedFrom only Reference(ManufacturedItemDefinitionUvEpi)

// ADD VALUE SETS

* routeOfAdministration ^example.label = "SPOR example"
* routeOfAdministration  ^example.valueCodeableConcept = $spor-rms#100000073578 "Gingival use"

* insert PropertyRulesSet




