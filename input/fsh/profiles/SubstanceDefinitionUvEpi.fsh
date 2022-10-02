Profile: SubstanceDefinitionUvEpi
Parent: SubstanceDefinition
Id: SubstanceDefinition-uv-epi
Title: "SubstanceDefinition (ePI)"
Description: "SubstanceDefinition (ePI)"

* identifier ^short = "An identifier or code by which the SubstanceDefinition can be referenced."

* status ^short =	"draft|active|retired|unknown"

* domain from $VS-medicinal-product-domain (preferred)

* description ^short = "Textual description of the substance."
* manufacturer only Reference ( OrganizationUvEpi )

* molecularWeight 
  * amount ^short = "The molecular weight."
    * value ^short = "numerical value."
    * unit ^short = "Unit of measure."
    * code ^short = "coded form of the unit of measure."

* structure 
  * molecularFormula ^short = "Structural information."

* code 
  * ^short = "Codes associated with the substance." // Clarify when use codes and when identifiers
  * code from VsSubstance (preferred)

* name ^short = "Names applicable to this substance."
  * name ^short = "International Non-Proprietary Name (INN) of the substance."