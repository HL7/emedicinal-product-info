Profile: SubstanceDefinitionUvEpi
Parent: SubstanceDefinition
Id: SubstanceDefinition-uv-epi
Title: "SubstanceDefinition (ePI)"
Description: "SubstanceDefinition (ePI)"

* identifier 1..
  * system 1..
  * value 1..

* status ^short =	"draft|active|retired|unknown"

* domain from $VS-medicinal-product-domain (example)

* description ^short = "Textual description of the substance."
* manufacturer only Reference ( OrganizationUvEpi )

* molecularWeight 
  * amount ^short = "The molecular weight."
    * value ^short = "numerical value."
    * unit ^short = "Unit of measure."
    * code ^short = "coded form of the unit of measure."

* structure 
  * molecularFormula ^short = "Molecular formula (e.g. using the Hill system)."

* code 
  * ^short = "Codes associated with the substance." // Clarify when use codes and when identifiers
  * code from VsSubstance (example)

* name 0..*
  * ^short = "International Non-Proprietary Name (INN) of the substance; or United States Adopted Name (USAN) if applicable."
  * type 0..1