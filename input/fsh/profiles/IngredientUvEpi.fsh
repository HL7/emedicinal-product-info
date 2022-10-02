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
      // presentation
      presentationRatio 0.. and 
      presentationRatioRange 0.. and
      presentationCodeableConcept 0.. and 
      presentationQuantity 0.. and
      // concentration
      concentrationRatio 0.. and 
      concentrationRatioRange 0.. and
      concentrationCodeableConcept 0.. and 
      concentrationQuantity 0.. 

// presentation
  * strength[presentationRatio].presentation[x] only Ratio
  * strength[presentationRatioRange].presentation[x] only RatioRange
  * strength[presentationCodeableConcept].presentation[x] only CodeableConcept
  * strength[presentationQuantity].presentation[x] only Quantity

// concentration
  * strength[concentrationRatio].concentration[x] only Ratio
  * strength[concentrationRatioRange].concentration[x] only RatioRange
  * strength[concentrationCodeableConcept].concentration[x] only CodeableConcept
  * strength[concentrationQuantity].concentration[x] only Quantity

  * textPresentation
  * textConcentration
  * basis
  * referenceStrength
    * substance
    * strength[x]
