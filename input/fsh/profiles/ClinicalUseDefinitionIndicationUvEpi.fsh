Profile: ClinicalUseDefinitionIndicationUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-indication-uv-epi
Title: "ClinicalUseDefinition Indication (ePI)"
Description: "ClinicalUseDefinition Indication (ePI)"
* insert SetFmmandStatusRule ( 1, trial-use )
* insert ClinicalUseDefinitionCommonRules
* type = #indication

* contraindication 0..0
// * indication 0..0
* interaction 0..0
* warning 0..0
* undesirableEffect 0..0
*  indication 1..
  * diseaseSymptomProcedure from VsMeddra (preferred)

