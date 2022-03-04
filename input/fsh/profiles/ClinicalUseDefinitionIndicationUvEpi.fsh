Profile: ClinicalUseDefinitionIndicationUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-indication-uv-epi
Title: "ClinicalUseDefinition Indication (ePI)"
Description: "ClinicalUseDefinition Indication (ePI)"

* insert ClinicalUseDefinitionCommonRules
* type = #indication

*  contraindication 0..
*  indication 1..
*  indication.diseaseSymptomProcedure.concept 1..
*  interaction 0..
*  undesirableEffect 0..
*  warning 0..