Profile: SubstanceDefinitionUvEpi
Parent: SubstanceDefinition
Id: SubstanceDefinition-uv-epi
Title: "SubstanceDefinition (ePI)"
Description: "SubstanceDefinition (ePI)"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier.system 1..
* identifier.value 1..
* version ^short = "A business level version identifier of the substance."
* status ^short = "draft|active|retired|unknown"
* classification ^short = "A categorization, high level specific type of substance, or similar."
* domain ^short = "If the substance applies to human or veterinary use."
* grade ^short = "The quality standard, established by a regulatory body."
* description ^short = "Textual description of the substance."
* manufacturer only Reference(Organization-uv-epi)
* moiety ^short = "Moiety, for structural modifications"
* moiety.identifier ^short = "Identifier of the moiety"
* moiety.name ^short = "Name of the moiety"
* moiety.stereochemistry ^short = "Stereochemistry of the moiety"
* moiety.molecularFormula ^short = "Molecular formula of the moiety"
* molecularWeight ^short = "The molecular weight or weight range"
* molecularWeight.amount ^short = "The molecular weight or weight range"
* structure ^short = "Structural information"
* structure.stereochemistry ^short = "Stereochemistry of the substance"
* structure.molecularFormula ^short = "Molecular formula"
* structure.molecularWeight ^short = "The molecular weight or weight range"
* code ^short = "Codes associated with the substance"
* name ^short = "Names for the substance"
* name.name ^short = "The actual name"
* name.type ^short = "Name type"
* name.preferred ^short = "If this is the preferred name for this language"
* name.language ^short = "Human language that the name is sold in"
