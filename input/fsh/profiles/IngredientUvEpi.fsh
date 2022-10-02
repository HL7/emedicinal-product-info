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
  * code.concept ^example.label = "UNII example"
  * code.concept ^example.valueCodeableConcept = $ginas#2ZM8CX04RZ "Insulin glargine"
  // => add value set binding
  * strength 
    * ^short = "The quantity of substance, per presentation, or per volume or mass, and type of quantity."
    * presentation[x] ^slicing.discriminator[0].type = #value
    * presentation[x] ^slicing.discriminator[=].path = "system"
    * presentation[x] ^slicing.rules = #open
    * presentation[x] contains
        Ratio 0.. and 
        RatioRange 0.. and 
        CodeableConcept 0.. and
        Quantity 0..

    * presentation[Ratio]
    * presentation[RatioRange]
    * presentation[Quantity]
    * presentation[CodeableConcept]

    * presentation[Ratio].numerator
      * Quantity.value
      * Quantity.unit
      * Quantity.code
      * Quantity.system

    * presentation[Ratio].denominator
      * Quantity.value
      * Quantity.unit
      * Quantity.code
      * Quantity.system

    * presentation[Ratio].denominator
      * Quantity.value
      * Quantity.unit
      * Quantity.code
      * Quantity.system
