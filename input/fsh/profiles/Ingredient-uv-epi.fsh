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
* substance ^short = "The substance that makes up this ingredient"
* substance.code ^short = "A code or full resource that represents the substance of this ingredient"
* substance.strength ^short = "The quantity of the substance per presentation, or per volume or mass, and the type of quantity"
* substance.strength.presentation[x] ^short = "The quantity of the substance in the unit of presentation"
* substance.strength.textPresentation ^short = "Text of the whole presentation strength, or a part of it (with the rest in strength.presentation as a ratio)"
* substance.strength.concentration[x] ^short = "The strength of the substance per unit volume (or mass)"
* substance.strength.textConcentration ^short = "Text of the whole concentration strength, or a part of it (with the rest in strength.concentration as a ratio)"
* substance.strength.basis ^short = "A code that indicates whether the strength is based on the ingredient substance as stated or on the substance base (when the ingredient is a salt)"
* substance.strength.measurementPoint ^short = "The point or distance at which the strength is measured"
* substance.strength.country ^short = "The countries where the strength range applies"
* substance.strength.referenceStrength ^short = "The strength expressed in terms of a reference substance"
* substance.strength.referenceStrength.substance ^short = "The relevant reference substance"
* substance.strength.referenceStrength.strength[x] ^short = "The strength expressed in terms of the reference substance"
* substance.strength.referenceStrength.measurementPoint ^short = "The point or distance at which the reference strength is measured"
* substance.strength.referenceStrength.country ^short = "The countries where the reference strength range applies"
