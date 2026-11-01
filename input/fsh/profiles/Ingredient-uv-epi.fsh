Profile: IngredientUvEpi
Parent: Ingredient
Id: Ingredient-uv-epi
Title: "Ingredient (ePI)"
Description: "Ingredient (ePI)"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier ^short = "The unique identifier or code for this ingredient (e.g., UNII)"
* status 1..
* status ^short = "draft|active|retired|unknown"
* for only Reference(ManufacturedItemDefinition-uv-epi)
* role 1..1
* role ^short = "Role of the ingredient in the product"
* role.coding 1..1
* role.coding.system 1..1
* role.coding.code 1..1
* role.coding.display 1..1
* function 0..*
* function ^short = "Precise action within the role"
* group 0..1
* group ^short = "A classification of the ingredient according to where in the physical item it tends to be used."
* allergenicIndicator ^short = "If the ingredient is a known or suspected allergen."
* manufacturer.manufacturer only Reference(Organization-uv-epi)
* substance ^short = "The substance that comprises this ingredient"
* substance.code ^short = "A code or full resource that represents the ingredient substance"
* substance.strength ^short = "The quantity of substance, per presentation, or per volume or mass, and type of quantity"
* substance.strength.presentation[x] ^short = "The quantity of substance in the unit of presentation"
* substance.strength.textPresentation ^short = "Text of either the whole presentation strength or a part of it (rest being in Strength.presentation as a ratio)"
* substance.strength.concentration[x] ^short = "The strength per unitary volume (or mass)"
* substance.strength.textConcentration ^short = "Text of either the whole concentration strength or a part of it (rest being in Strength.concentration as a ratio)"
* substance.strength.basis ^short = "A code that indicates if the strength is, for example, based on the ingredient substance as stated or on the substance base (when the ingredient is a salt)"
* substance.strength.measurementPoint ^short = "When strength is measured at a particular point or distance"
* substance.strength.country ^short = "Where the strength range applies"
* substance.strength.referenceStrength ^short = "Strength expressed in terms of a reference substance"
* substance.strength.referenceStrength.substance ^short = "Relevant reference substance"
* substance.strength.referenceStrength.strength[x] ^short = "Strength expressed in terms of a reference substance"
* substance.strength.referenceStrength.measurementPoint ^short = "When strength is measured at a particular point or distance"
* substance.strength.referenceStrength.country ^short = "Where the strength range applies"
