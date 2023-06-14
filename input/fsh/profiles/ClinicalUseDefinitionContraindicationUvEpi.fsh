Profile: ClinicalUseDefinitionContraindicationUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-contraindication-uv-epi
Title: "ClinicalUseDefinition Contraindication (ePI)"
Description: "ClinicalUseDefinition Contraindication (ePI)"
* insert SetFmmandStatusRule ( 1, trial-use )
* insert ClinicalUseDefinitionCommonRules
* type = #contraindication

// * contraindication 0..0
* indication 0..0
* interaction 0..0
* warning 0..0
* undesirableEffect 0..0
*  contraindication 1..
  * diseaseSymptomProcedure from VsMeddra (preferred)

