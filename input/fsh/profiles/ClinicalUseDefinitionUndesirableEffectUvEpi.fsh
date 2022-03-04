Profile: ClinicalUseDefinitionUndesirableEffectUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-undesirableEffect-uv-epi
Title: "ClinicalUseDefinition Undesirable Effect (ePI)"
Description: "ClinicalUseDefinition Undesirable Effect (ePI)"


* insert ClinicalUseDefinitionCommonRules

* type = #undesirableEffect

*  contraindication 0..0
*  indication 0..0
*  interaction 0..0
*  undesirableEffect 1..
  * symptomConditionEffect ^short = "The situation in which the undesirable effect may manifest."
  * classification  ^short = "High level classification of the effect."
  * frequencyOfOccurrence ^short = "How often the effect is seen."
 
 
*  warning 0..0