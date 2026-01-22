Profile: SubstanceDefinitionUvEpi
Parent: SubstanceDefinition
Id: SubstanceDefinition-uv-epi
Title: "SubstanceDefinition (ePI)"
Description: "SubstanceDefinition (ePI)"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier.system 1..1
* identifier.value 1..1
* version ^short = "A business level version identifier of the substance."
* status.coding 1..1
* status.coding.system 1..1
* status.coding.code 1..1
* status.coding.display 1..1
* classification.coding 1..1
* classification.coding.system 1..1
* classification.coding.code 1..1
* classification.coding.display 1..1
* domain.coding 1..1
* domain.coding.system 1..1
* domain.coding.code 1..1
* domain.coding.display 1..1
* grade.coding 1..1
* grade.coding.system 1..1
* grade.coding.code 1..1
* grade.coding.display 1..1
* description ^short = "Textual description of the substance."
* manufacturer only Reference(Organization-uv-epi)
* moiety ^short = "Moiety, for structural modifications"
* moiety.identifier.system 1..1
* moiety.identifier.value 1..1
* moiety.name ^short = "Name of the moiety"
* moiety.stereochemistry.coding 1..1
* moiety.stereochemistry.coding.system 1..1
* moiety.stereochemistry.coding.code 1..1
* moiety.stereochemistry.coding.display 1..1
* moiety.molecularFormula ^short = "Molecular formula of the moiety"
* molecularWeight ^short = "The molecular weight or weight range"
* molecularWeight.amount ^short = "The molecular weight or weight range"
* structure ^short = "Structural information"
* structure.stereochemistry.coding 1..1
* structure.stereochemistry.coding.system 1..1
* structure.stereochemistry.coding.code 1..1
* structure.stereochemistry.coding.display 1..1
* structure.molecularFormula ^short = "Molecular formula"
* structure.molecularWeight ^short = "The molecular weight or weight range"
* code ^short = "Codes associated with the substance"
* name ^short = "Names for the substance"
* name.name ^short = "The actual name"
* name.type.coding 1..1
* name.type.coding.system 1..1
* name.type.coding.code 1..1
* name.type.coding.display 1..1
* name.preferred ^short = "If this is the preferred name for this language"
* name.language.coding 1..1
* name.language.coding.system 1..1
* name.language.coding.code 1..1
* name.language.coding.display 1..1
