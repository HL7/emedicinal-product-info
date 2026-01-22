CodeSystem: EpiIg
Id: epi-ig
Title: "eMedicinal Product Information Code System"
Description: """eMedicinal Product Information Code System.
Coded concepts defined for ePI use only."""
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

CodeSystem: BenefitAndRiskRelationship
Id: benefit-and-risk-relationship
Title: "Benefit and Risk Relationship"
Description: "Benefit and Risk Relationship"
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* ^caseSensitive = false
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/benefit-and-risk-relationship"
* #contraindicated-only-with "Only contraindicated with" "Only contraindicated with"
* #not-recommended-with "Not recommended with" "Not recommended with"