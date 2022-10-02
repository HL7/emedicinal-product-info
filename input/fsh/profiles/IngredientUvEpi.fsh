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

* manufacturer.manufacturer only Reference(OrganizationUvEpi)

* substance
  * code.reference only Reference(SubstanceDefinitionUvEpi)
  * code.concept 1..
    * coding
      * system from VsSubstance (preferred)
        * ^short = "Global Substance Registration System (G-SRS)"
      * code
        * ^short = "Unique code identifying the substance (UNII)"
      * display
        * ^short = "International Non-Proprietary Name (INN) of the ingredient"
  * strength 
    * ^short = "The quantity of substance, per presentation, or per volume or mass, and type of quantity."
  * strength ^slicing.discriminator[0].type = #value
  * strength ^slicing.discriminator[=].path = "system"
  * strength ^slicing.rules = #open
  * strength contains
        presentation 0.. and 
        concentration 0..

  * presentation[presentation].presentation[x]

  * presentation[concentration].concentration[x]


