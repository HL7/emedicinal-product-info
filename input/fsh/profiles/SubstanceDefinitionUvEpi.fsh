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
  * ^short = "The molecular weight."
  * amount
    * value
    * unit
    * code

* structure 
  * ^short = "Structural information."
  * molecularFormula

* code 
  * ^short = "Codes associated with the substance." // Clarify when use codes and when identifiers
  * code from VsSubstance (preferred)

* name ^short = "Names applicable to this substance."
  * name ^short = "The actual name."