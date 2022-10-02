Profile: IngredientUvEpi
Parent: Ingredient
Id: Ingredient-uv-epi
Title: "Ingredient (ePI)"
Description: "Ingredient (ePI)"

/* ==  this seems to be the id of the substance ...
* identifier.system = "https://gsrs.ncats.nih.gov/ginas/app/beta/"
* identifier.value = "2ZM8CX04RZ"
* identifier.use = #official
=== */

* identifier ^short = "An identifier or code by which the ingredient can be referenced."

* status ^short =	"draft|active|retired|unknown"

* for only Reference( MedicinalProductDefinitionUvEpi or AdministrableProductDefinitionUvEpi or ManufacturedItemDefinitionUvEpi)

* role from $VS-RoleClassIngredientEntity (preferred)

* allergenicIndicator ^short = "If the ingredient is a known or suspected allergen." // = false

 // Reference to Organization: Manufacturer

* manufacturer
  * manufacturer only Reference(OrganizationUvEpi)

* substance
  * code from VsSubstance (preferred)
  * strength 
    * ^short = "The quantity of substance, per presentation, or per volume or mass, and type of quantity."
  * strength ^slicing.discriminator[0].type = #value
  * strength ^slicing.discriminator[=].path = "system"
  * strength ^slicing.ordered = true
  * strength ^slicing.rules = #open
  * strength contains
      presentation 0.. and 
      concentration 0..  

  // presentation
  * strength[presentation].presentation[x] only Ratio
  // concentration
  * strength[concentration].concentration[x] only Ratio


  * strength.textPresentation ^short = "Text of either the whole presentation strength or a part of it"
  * strength.textConcentration ^short = "Text of either the whole concentration strength or a part of it"
  * strength.basis from VsRoleClassIngredientEntity (preferred)
  * strength.referenceStrength ^short = "Strength expressed in terms of a reference substance"
    * substance from VsSubstance (preferred)
    * strength[x] ^short = "Strength of the reference substance."
