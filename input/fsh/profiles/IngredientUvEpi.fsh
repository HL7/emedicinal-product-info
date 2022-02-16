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


* status MS
* role 1.. //  = https://spor.ema.europa.eu/rmswi/#/#00000072072 "active"

* allergenicIndicator MS // = false

 // Reference to Organization: Manufacturer
* manufacturer.manufacturer MS
* manufacturer.manufacturer only Reference(Organization)

* substance 1..
  * code.concept 1.. // = https://gsrs.ncats.nih.gov/ginas/app/beta/#2ZM8CX04RZ "Insulin glargine"
  * strength 0.. MS