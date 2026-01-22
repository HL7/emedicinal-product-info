Profile: IngredientUvEpi
Parent: Ingredient
Id: Ingredient-uv-epi
Title: "Ingredient (ePI)"
Description: "Ingredient (ePI)"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier ^short = "An identifier or code by which the ingredient can be referenced."
* status 1..
* status ^short = "draft|active|retired|unknown"
* for only Reference(ManufacturedItemDefinition-uv-epi)
* identifier.system 1..1
* identifier.value 1..1
* role.coding 1..1
* role.coding.system 1..1
* role.coding.code 1..1
* role.coding.display 1..1
* function.coding 1..1
* function.coding.system 1..1
* function.coding.code 1..1
* function.coding.display 1..1
* allergenicIndicator ^short = "If the ingredient is a known or suspected allergen."
* manufacturer.manufacturer only Reference(Organization-uv-epi)
* substance ^short = "The substance that comprises this ingredient"
* substance.code.concept.coding 1..1
* substance.code.concept.coding.system 1..1
* substance.code.concept.coding.code 1..1
* substance.code.concept.coding.display 1..1
* substance.strength ^short = "The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item."
* substance.strength.presentation[x] ^short = "The quantity of substance in the unit of presentation"
* substance.strength.concentration[x] ^short = "The strength per unitary volume (or mass)"
* substance.strength.basis ^short = "A code that indicates if the strength is reckoned based on the substance or the moiety."
* substance.strength.referenceStrength ^short = "Strength expressed in terms of a reference substance"
