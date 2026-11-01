Profile: ClinicalUseDefinitionInteractionUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-interaction-uv-epi
Title: "ClinicalUseDefinition Interaction (ePI)"
Description: "ClinicalUseDefinition Interaction (ePI) - Profile for Interaction"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier ^short = "Business identifier for this clinical use definition"
* type = #interaction
* type ^short = "interaction"
* category ^short = "A categorization of the interaction, used to group interactions under subject headings"
* subject only Reference(MedicinalProductDefinition-uv-epi)
* subject ^short = "The medicinal product that this interaction applies to"
* status ^short = "Whether this is a current interaction or one that is no longer in effect"
* population only Reference(GroupUvEpi)
* population.reference 1..
* population ^short = "Population the interaction applies to (a fully defined Group)"
* library ^short = "Logic used by the clinical use definition"

// The interaction backbone, aligned to the base resource
* interaction 1..1
* interaction ^short = "Specifics for when this is an interaction"
* interaction.interactant ^short = "The specific medication, product, food, substance or laboratory test that interacts"
* interaction.interactant.item[x] ^short = "The interacting item, as a reference or a code"
* interaction.type ^short = "The type of the interaction (e.g., drug-drug, drug-food, drug-laboratory test)"
* interaction.effect ^short = "The effect of the interaction (e.g., increased risk of bleeding, reduced efficacy)"
* interaction.incidence ^short = "The incidence of the interaction (e.g., theoretical, observed)"
* interaction.management ^short = "Actions for managing the interaction (e.g., avoid use, monitor, adjust the dose)"

// The other clinical use types are profiled separately
* indication 0..0
* contraindication 0..0
* undesirableEffect 0..0
* warning 0..0
