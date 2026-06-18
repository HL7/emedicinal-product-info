// ============================================================================
// Population / patient-characteristic terminology for ePI dosing & clinical use
//
// Split into:
//   1. GroupCharacteristicType  - the AXIS (type) a characteristic describes
//                                 (sex, age, weight, race, lifestyle, organ
//                                  function, immune status ...)
//   2. value sets per coded axis - the VALUE a characteristic can take
//
// Age, body weight and renal function are expressed as a Range (no value set).
// Both Group.characteristic.code and
// MedicationKnowledge...dosingGuideline.patientCharacteristic.type bind to the
// SAME GroupCharacteristicType value set so the two structures share one
// vocabulary.
// ============================================================================

CodeSystem: GroupCharacteristicTypeCS
Id: epi-group-characteristic-type
Title: "Group Characteristic Type Code System (ePI)"
Description: "The axis a population characteristic describes (e.g., sex, age, body weight, organ function), for use in Group definitions and in MedicationKnowledge dosing guidelines."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* ^caseSensitive = true
* #sex "Sex" "Administrative/biological sex of the population."
* #age "Age" "Age of the population, expressed as a range."
* #body-weight "Body weight" "Body weight of the population, expressed as a range."
* #race "Race" "Race / ethnic grouping of the population."
* #lifestyle "Lifestyle" "Relevant lifestyle factor (e.g., smoking status, pregnancy)."
* #renal-function "Renal function" "Renal function of the population, typically expressed as a creatinine-clearance range."
* #hepatic-function "Hepatic function" "Hepatic function / degree of hepatic impairment."
* #immune-status "Immune status" "Immune competence of the population (e.g., immunocompromised, chronic immune suppression)."

//=========================
ValueSet: GroupCharacteristicType
Id: group-characteristic-type
Title: "Group Characteristic Type (ePI)"
Description: "The axis a population characteristic describes. Extensible: real product information regularly stratifies on axes not enumerated here."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* include codes from system GroupCharacteristicTypeCS

//=========================
ValueSet: GroupSexValue
Id: group-sex-value
Title: "Group Sex Value (ePI)"
Description: "Sex values for a population characteristic."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* include codes from system http://hl7.org/fhir/administrative-gender

//=========================
ValueSet: GroupRaceValue
Id: group-race-value
Title: "Group Race Value (ePI)"
Description: "Seed value set for race / ethnic grouping. Extensible - replace or extend with the regulator-mandated race code system as needed."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* $sct#413773004 "Caucasian"
* $sct#18167009 "Black"
* $sct#413582008 "Asian"
* $sct#413490006 "American Indian or Alaska native"

//=========================
ValueSet: GroupLifestyleValue
Id: group-lifestyle-value
Title: "Group Lifestyle Value (ePI)"
Description: "Seed value set for lifestyle factors relevant to dosing. Extensible."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* $sct#77176002 "Smoker"
* $sct#8392000 "Non-smoker"
* $sct#77386006 "Pregnant"
* $sct#169750002 "Breast-feeding"

//=========================
ValueSet: GroupImmuneStatusValue
Id: group-immune-status-value
Title: "Group Immune Status Value (ePI)"
Description: "Seed value set for immune status relevant to dosing. Extensible."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* $sct#234532001 "Immunocompromised"
* $sct#86406008 "Human immunodeficiency virus infection"

//=========================
ValueSet: GroupHepaticFunctionValue
Id: group-hepatic-function-value
Title: "Group Hepatic Function Value (ePI)"
Description: "Seed value set for hepatic function / degree of hepatic impairment. Placeholder concepts; extensible - replace with the regulator-mandated severity grading (e.g., Child-Pugh) as needed."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* $sct#59927004 "Hepatic failure"
* $sct#235856003 "Disorder of liver"
