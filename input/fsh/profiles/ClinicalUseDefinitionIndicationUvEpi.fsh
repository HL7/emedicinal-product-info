Profile: ClinicalUseDefinitionIndicationUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-indication-uv-epi
Title: "ClinicalUseDefinition Indication (ePI)"
Description: "ClinicalUseDefinition Indication (ePI)"

* insert ClinicalUseDefinitionCommonRules
* type = #indication

*  interaction ..0
*  indication 1..
  * diseaseSymptomProcedure from VsMeddra (preferred)

