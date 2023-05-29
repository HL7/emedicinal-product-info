Profile: IngredientUvEpi
Parent: Ingredient
Id: Ingredient-uv-epi
Title: "Ingredient (ePI)"
Description: "Ingredient (ePI)"

* identifier ^short = "An identifier or code by which the ingredient can be referenced."

* status ^short =	"draft|active|retired|unknown"

* for only Reference( MedicinalProductDefinitionUvEpi or AdministrableProductDefinitionUvEpi or ManufacturedItemDefinitionUvEpi)

* role

* allergenicIndicator ^short = "If the ingredient is a known or suspected allergen." // = false

* manufacturer
  * manufacturer only Reference(OrganizationUvEpi)

* substance
  * code from VsSubstance (preferred)
  * strength 
    * ^short = "The quantity of substance, per presentation, or per volume or mass, and type of quantity."
//  * strength ^slicing.discriminator[0].type = #value
//  * strength ^slicing.discriminator[=].path = "system"
//  * strength ^slicing.ordered = true
//  * strength ^slicing.discriminator[0].type = #type
//  * strength ^slicing.discriminator[=].path = "presentation"
//  * strength ^slicing.discriminator[+].type = #type
//  * strength ^slicing.discriminator[=].path = "concentration"
//  * strength ^slicing.ordered = false
//  * strength ^slicing.rules = #open
//  * strength contains
//      presentation 0.. and 
//      concentration 0..  

  // presentation
//  * strength[presentation].presentation[x] only Ratio
//  * strength[presentation].concentration[x] 0..0
  
  // concentration
//  * strength[concentration].concentration[x] only Ratio
//  * strength[concentration].presentation[x] 0..0


  * strength.textPresentation ^short = "Text of either the whole presentation strength or a part of it"
  * strength.textConcentration ^short = "Text of either the whole concentration strength or a part of it"
  * strength.basis from VsRoleClassIngredientEntity (preferred)
  * strength.referenceStrength ^short = "Strength expressed in terms of a reference substance"
    * substance from VsSubstance (preferred)
    * strength[x] ^short = "Strength of the reference substance."
