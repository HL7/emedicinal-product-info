Profile: SubstanceDefinitionUvEpi
Parent: SubstanceDefinition
Id: SubstanceDefinition-uv-epi
Title: "SubstanceDefinition (ePI)"
Description: "SubstanceDefinition (ePI)"

* identifier ^short = "An identifier or code by which the SubstanceDefinition can be referenced."

* status ^short =	"draft|active|retired|unknown"

* classification ^short = "A categorization, high level e.g. polymer or nucleic acid, or food, chemical, biological, or lower e.g. polymer linear or branch chain, or type of impurity."

* domain from $VS-medicinal-product-domain (preferred)

* description ^short = "Textual description of the substance."
* manufacturer only Reference ( OrganizationUvEpi )
* moiety ^short = "Moiety, for structural modifications."
* molecularWeight ^short = "The molecular weight or weight range."
* structure ^short = "Structural information."
* code ^short = "Codes associated with the substance." // Clarify when use codes and when identifiers
* name ^short = "Names applicable to this substance."
  * name ^short = "The actual name."