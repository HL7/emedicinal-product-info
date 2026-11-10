Profile: ManufacturedItemDefinitionUvEpi
Parent: ManufacturedItemDefinition
Id: ManufacturedItemDefinition-uv-epi
Title: "ManufacturedItemDefinition (ePI)"
Description: "Describes the product as the dose form in its primary packaging and before any necessary transformation (e.g., powder for solution)."
// Lock-down: references to resources that have an ePI profile point to that profile; target types without an ePI profile are kept.
* component.constituent.hasIngredient only CodeableReference(IngredientUvEpi)
* ^status = #active
* . ^short = "Describes the product as the dose form in its primary packaging and before any necessary transformation (e.g., powder for solution)"
* . ^definition = "Describes the product as the dose form in its primary packaging and before any necessary transformation (e.g., powder for solution)."
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier ^short = "The unique identifier or code for this manufactured item"
* status ^short = "draft|active|retired|unknown"
* name ^short = "A descriptive name given to this item."
* manufacturedDoseForm ^short = "Dose form in the primary packaging and before any necessary transformations"
* manufacturedDoseForm.coding 1..1
* manufacturedDoseForm.coding.system 1..1
* manufacturedDoseForm.coding.code 1..1
* manufacturedDoseForm.coding.display 1..1
* unitOfPresentation ^short = "The units used to count the quantity of manufactured items (e.g., tablet, capsule, vial, bottle)"
* unitOfPresentation.coding 1..1
* unitOfPresentation.coding.system 1..1
* unitOfPresentation.coding.code 1..1
* unitOfPresentation.coding.display 1..1
* manufacturer only Reference(Organization-uv-epi)
* insert PropertyRulesSet

