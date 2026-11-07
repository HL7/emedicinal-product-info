Profile: AdministrableProductDefinitionUvEpi
Parent: AdministrableProductDefinition
Id: AdministrableProductDefinition-uv-epi
Title: "AdministrableProductDefinition (ePI)"
Description: "Describes the product as the dose form for administration to the patient, after any necessary transformation (e.g., solution for injection)."
* ^status = #active
* . ^short = "Describes the product as the dose form for administration to the patient, after any necessary transformation (e.g., solution for injection)"
* . ^definition = "Describes the product as the dose form for administration to the patient, after any necessary transformation (e.g., solution for injection)."
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier ^short = "The unique identifier or code for this administrable product (e.g., PhPID)"
* status ^short = "draft | active | retired | unknown"
* formOf only Reference(MedicinalProductDefinition-uv-epi)
* administrableDoseForm ^short = "Dose form for administration to the patient, after any necessary transformations"
* administrableDoseForm.coding 1..1
* administrableDoseForm.coding.system 1..1
* administrableDoseForm.coding.code 1..1
* administrableDoseForm.coding.display 1..1
* unitOfPresentation ^short = "The units used to count the quantity of administrable product (e.g., tablet, capsule, actuation, drop)"
* unitOfPresentation.coding 1..1
* unitOfPresentation.coding.system 1..1
* unitOfPresentation.coding.code 1..1
* unitOfPresentation.coding.display 1..1
* producedFrom only Reference(ManufacturedItemDefinition-uv-epi)
* insert PropertyRulesSet
* routeOfAdministration ^short = "The path by which the product is taken into or makes contact with the body."
* routeOfAdministration.code.coding 1..1
* routeOfAdministration.code.coding.system 1..1
* routeOfAdministration.code.coding.code 1..1
* routeOfAdministration.code.coding.display 1..1
