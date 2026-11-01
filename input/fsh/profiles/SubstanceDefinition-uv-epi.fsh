Profile: SubstanceDefinitionUvEpi
Parent: SubstanceDefinition
Id: SubstanceDefinition-uv-epi
Title: "SubstanceDefinition (ePI)"
Description: "SubstanceDefinition (ePI)"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1.. MS
* identifier ^short = "Identifier by which this substance is known (e.g., UNII)"
* version MS
* status MS
* status ^short = "Status of the substance in the catalogue: draft | active | retired | unknown"
* status ^definition = "Status of the substance within the catalogue, using one of the publication status codes: draft, active, retired or unknown."
* grade MS
* grade ^short = "The quality standard, established benchmark, to which the substance complies (e.g., USP/NF, BP)"
* manufacturer MS
* manufacturer only Reference(Organization-uv-epi)
* moiety MS
* moiety ^short = "Defined part of the substance's molecule, such as the active moiety"
* moiety ^definition = "A defined part of the substance's molecule, most often the active moiety: the part responsible for the pharmacological action, without the salt or ester portion. For example, the active moiety of metformin hydrochloride is metformin. In ePI, identify each moiety by its identifier and name."
* moiety.identifier MS
* moiety.identifier ^short = "Identifier by which this moiety is known (e.g., UNII)"
* moiety.name MS
* molecularWeight MS
* structure MS
* structure.molecularFormula MS
* structure.molecularFormula ^short = "Number and type of atoms in a molecule of the substance (e.g., C8H9NO2 for paracetamol)"
* name MS
* name.language ^short = "Language of the name, as a two-letter ISO 639-1 code or IETF BCP 47 language tag (e.g., en, fr, ja)"
* name.language ^definition = "Human language that the name is written in. Use a two-letter ISO 639-1 language code, or an IETF BCP 47 language tag where a region or script is needed (e.g., en, fr, ja, en-CA)."
