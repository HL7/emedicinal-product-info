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


* role ^example.valueCodeableConcept =  $spor-rms#00000072072 "active"

* allergenicIndicator ^short = "If the ingredient is a known or suspected allergen." // = false

 // Reference to Organization: Manufacturer

* manufacturer.role ^short = "allowed|possible|actual"
* manufacturer.manufacturer only Reference(OrganizationUvEpi)

* substance
  * code.reference only Reference(SubstanceDefinitionUvEpi)
  * code.concept 1..
  * code.concept ^example.label = "UNII example"
  * code.concept ^example.valueCodeableConcept = $ginas#2ZM8CX04RZ "Insulin glargine"
   
 

  // => add value set binding
  * strength ^short = "The quantity of substance, per presentation, or per volume or mass, and type of quantity."
    * presentation[x] ^short = "The quantity of substance in the unit of presentation."
    * presentationText 	^short = "Text of either the whole presentation strength or a part of it"
    * concentration[x] 	^short = "The strength per unitary volume (or mass)"
    * concentrationText 	^short = "Text of either the whole concentration strength or a part of it"
    * basis 				^short = "A code that indicates if the strength is, for example, based on the ingredient substance as stated or on the substance base (when the ingredient is a salt)."
    * referenceStrength 	^short = "Strength expressed in terms of a reference substance."