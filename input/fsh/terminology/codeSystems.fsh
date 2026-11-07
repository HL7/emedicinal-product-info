CodeSystem: EpiIg
Id: epi-ig
Title: "eMedicinal Product Information Code System"
Description: """eMedicinal Product Information Code System.
Coded concepts defined for ePI use only."""
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* ^caseSensitive = false
* #flavor "Flavor" "Placeholder for the Flavor concept"
* #surfaceform "Surface form" "Placeholder for the Surface form concept"
* #imprint "Imprint" "Placeholder for the Imprint concept"
* #staining "Staining" "Placeholder for the Staining concept"
* #shape "Shape" "Placeholder for the Shape concept"
* #color "Color" "Placeholder for the Color concept"
* #score "Score" "Placeholder for the Score concept"
* #size "Size" "Placeholder for the Size concept"
* #image "Image" "Placeholder for the Image concept"
* #indication "Indication" "Indication"
* #contraindication "Contraindication" "Contraindication"
* #interaction "Interaction" "Interaction"
* #undesirable-effect "Undesirable effect" "Undesirable effect"
* #warning "Warning" "Warning"
* #marketing-authorization-holder "Marketing authorization holder" "The organization that holds the marketing authorization for the medicinal product"

CodeSystem: BenefitAndRiskRelationship
Id: benefit-and-risk-relationship
Title: "Benefit and Risk Relationship"
Description: "Benefit and Risk Relationship"
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* ^caseSensitive = false
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/benefit-and-risk-relationship"
* #contraindicated-only-with "Only contraindicated with" "Only contraindicated with"
* #not-recommended-with "Not recommended with" "Not recommended with"

CodeSystem: EpiSurfaceFormExampleCS
Id: epi-surface-form-example
Title: "Surface Form (Example)"
Description: "Example surface forms of a tablet or other solid item, defined in this IG until a published code system is chosen."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* #convex "Convex" "The surface curves outwards"
* #concave "Concave" "The surface curves inwards"

CodeSystem: EpiDosagePhaseTypeExampleCS
Id: epi-dosage-phase-type-example
Title: "Dosage Phase Type (Example)"
Description: "Example kinds of phase in a dosing regimen, defined in this IG until a published code system is chosen."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* #initial "Initial dose" "The first dose or doses of a regimen"
* #loading "Loading dose" "A higher first dose given to reach the effective level quickly"
* #maintenance "Maintenance dose" "The dose given to keep the effective level after the initial or loading phase"
* #subsequent "Subsequent dose" "A dose given after the first dose, when the label does not call it maintenance"
* #as-needed "As needed" "A dose taken only when needed (PRN)"

CodeSystem: EpiIngredientGroupExampleCS
Id: epi-ingredient-group-example
Title: "Ingredient Group (Example)"
Description: "Example groups for where an ingredient is used in the physical item, defined in this IG until a published code system is chosen."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* #core "Core" "The core or inner body of the item (e.g., tablet core)"
* #coating "Coating" "The coating of the item (e.g., film coating)"
* #shell "Shell" "The outer shell of the item (e.g., capsule shell)"
* #fill "Fill" "The contents of a capsule or other shell"
* #ink "Printing ink" "Ink used to print on the item"
