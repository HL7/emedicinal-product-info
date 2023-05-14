Profile: ClinicalUseDefinitionWarningUvEpi
Parent: ClinicalUseDefinition
Id: ClinicalUseDefinition-warning-uv-epi
Title: "ClinicalUseDefinition Warning (ePI)"
Description: "ClinicalUseDefinition Warning (ePI)"

* insert ClinicalUseDefinitionCommonRules
* type = #warning

* contraindication 0..0
* indication 0..0
* interaction 0..0
// * warning 0..0
* undesirableEffect 0..0
*  warning 1..1
  * description	^short = "A textual definition of this warning, with formatting."