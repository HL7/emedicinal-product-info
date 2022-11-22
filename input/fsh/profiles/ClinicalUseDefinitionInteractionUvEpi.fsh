Profile: ClinicalUseDefinitionInteractionUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-interaction-uv-epi
Title: "ClinicalUseDefinition Interaction (ePI)"
Description: "ClinicalUseDefinition Interaction (ePI)"


* insert ClinicalUseDefinitionCommonRules
* type = #interaction

* interaction.interactant.itemCodeableConcept from VsAtcClassification



* interaction.interactant.itemCodeableConcept
  * insert AdditionalBinding ( #conformance, VsSubstance, The specific substance that interacts., The specific substance that interacts.)

/*   * ^binding.extension.extension[0].url = "purpose"
  * ^binding.extension.extension[=].valueCode = #conformance
  * ^binding.extension.extension[+].url = "valueSet"
  * ^binding.extension.extension[=].valueCanonical = VsSubstance
  * ^binding.extension.extension[+].url = "documentation"
  * ^binding.extension.extension[=].valueMarkdown = """The specific substance that interacts."""
  * ^binding.extension.url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
  * ^binding.description = "The specific substance that interacts." */

/*   * interactant ^slicing.discriminator[0].type = #type
  * interactant ^slicing.discriminator[=].path = $this.item[x]
  * interactant ^slicing.discriminator[0].type = #pattern
  * interactant ^slicing.discriminator[=].path = $this.itemCodeableConcept
  * interactant ^slicing.rules = #open
  * interactant contains
      substance 0.. and
	   substanceclass 0..

  * interactant[substance]
    * item[x] from VsSubstance (required)
      * ^short = "The specific substance that interacts."
    
  * interactant[substanceclass]
    * item[x] from VsAtcClassification (required)
      * ^short = "The class of substances that interacts" */
* interaction.type ^short = "The type of the interaction e.g. drug-drug, drug-food, drug-lab."