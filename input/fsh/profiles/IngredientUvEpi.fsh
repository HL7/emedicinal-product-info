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


// * role 1.. //  = https://spor.ema.europa.eu/rmswi/#/#00000072072 "active"
// CHANGE TO A VALUE SET BASED DISCRIMINATOR
* role.coding ^slicing.discriminator[0].type = #value
* role.coding ^slicing.discriminator[=].path = "system"
* role.coding ^slicing.rules = #open
* role.coding contains
    spor 0..*
* role.coding[spor] ^short = "SPOR (Europe)"
* role.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
* role.coding[spor].system = $spor // to be reviewed
* role.coding[spor].code 1.. 

* allergenicIndicator ^short = "If the ingredient is a known or suspected allergen." // = false

 // Reference to Organization: Manufacturer

* manufacturer.role ^short = "allowed|possible|actual"
* manufacturer.manufacturer only Reference(OrganizationUvEpi)

* substance 1..
  * code.concept 1.. // = https://gsrs.ncats.nih.gov/ginas/app/beta/#2ZM8CX04RZ "Insulin glargine"
  * code.concept.coding.code 1..
  // CHANGE TO A VALUE SET BASED DISCRIMINATOR
  * code.concept.coding ^slicing.discriminator[+].type = #value
  * code.concept.coding ^slicing.discriminator[=].path = "system"
  * code.concept.coding ^slicing.rules = #open
  * code.concept.coding contains
						spor 0..* and 
						unii 0..*
  * code.concept.coding[spor] ^short = "SMS (Europe)"
  * code.concept.coding[spor] ^definition = "EMA - SMS" // to be reviewed
  * code.concept.coding[spor].system = $spor-sms // to be reviewed

  * code.concept.coding[unii] ^short = "UNII (US)"
  * code.concept.coding[unii] ^definition = "Unique Ingredient Identifier" // to be reviewed
  * code.concept.coding[unii].system = $unii // to be reviewed

  
 

  // => add value set binding
  * strength ^short = "The quantity of substance, per presentation, or per volume or mass, and type of quantity."
    * presentation[x] ^short = "The quantity of substance in the unit of presentation. "
    * presentationText 	^short = "Text of either the whole presentation strength or a part of it"
    * concentration[x] 	^short = "The strength per unitary volume (or mass)"
    * concentrationText 	^short = "Text of either the whole concentration strength or a part of it"
    * basis 				^short = "A code that indicates if the strength is, for example, based on the ingredient substance as stated or on the substance base (when the ingredient is a salt)."
    * referenceStrength 	^short = "Strength expressed in terms of a reference substance."