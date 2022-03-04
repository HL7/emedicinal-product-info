Profile: ClinicalUseDefinitionContraindicationUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-contraindication-uv-epi
Title: "ClinicalUseDefinition Contraindication (ePI)"
Description: "ClinicalUseDefinition Contraindication (ePI)"

* insert ClinicalUseDefinitionCommonRules
* type = #contraindication

*  contraindication 1..
*  contraindication.diseaseSymptomProcedure.concept 1..
*  interaction 0..0
*  undesirableEffect 0..0
*  warning 0..0