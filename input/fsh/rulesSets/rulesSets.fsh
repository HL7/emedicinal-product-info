RuleSet: AdditionalBinding ( purpose, valueSetAlias, documentation, description)
// RuleSet: additionalBinding ( #conformance, VsSubstance, The specific substance that interacts., The specific substance that interacts.)
* ^binding.extension.extension[0].url = "purpose"
* ^binding.extension.extension[=].valueCode = {purpose}
* ^binding.extension.extension[+].url = "valueSet"
* ^binding.extension.extension[=].valueCanonical = Canonical({valueSetAlias})
* ^binding.extension.extension[+].url = "documentation"
* ^binding.extension.extension[=].valueMarkdown = """{documentation}"""
* ^binding.extension.url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* ^binding.description = "{description}"

RuleSet: BundleEntry (sliceName, card, profile, short, def )

* entry contains {sliceName} {card}
* entry[{sliceName}].resource only {profile}
* entry[{sliceName}] ^short = "{short}"
* entry[{sliceName}] ^definition = """{def}"""

