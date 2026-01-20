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
* role ^short = "Role of the ingredient in the product"
* function ^short = "Precise action within the role"
* group ^short = "A classification of the ingredient according to where in the physical item it tends to be used."
* allergenicIndicator ^short = "If the ingredient is a known or suspected allergen."
* manufacturer.manufacturer only Reference(Organization-uv-epi)
* substance ^short = "The substance that comprises this ingredient"
* substance.code ^short = "A code or full resource that represents the ingredient's substance."
* substance.strength ^short = "The quantity of substance in the unit of presentation, or in the volume (or mass) of the single pharmaceutical product or manufactured item."
* substance.strength.presentation[x] ^short = "The quantity of substance in the unit of presentation"
* substance.strength.concentration[x] ^short = "The strength per unitary volume (or mass)"
* substance.strength.basis ^short = "A code that indicates if the strength is reckoned based on the substance or the moiety."
* substance.strength.referenceStrength ^short = "Strength expressed in terms of a reference substance"
