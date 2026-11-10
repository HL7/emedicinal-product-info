// ============================================================================
// Population / patient-characteristic terminology for ePI dosing & clinical use
//
// Split into:
//   1. GroupCharacteristicType  - the AXIS (type) a characteristic describes
//                                 (sex, age, weight, race, pregnancy and lactation, substance use, organ
//                                  function, immune status ...)
//   2. value sets per coded axis - the VALUE a characteristic can take
//
// Age, body weight and renal function are expressed as a Range (no value set).
// Group.characteristic.code binds to GroupCharacteristicType. Populations
// and sub-populations (including those used by structured dosing on
// ClinicalUseDefinition.indication) are always fully defined Groups.
// ============================================================================

CodeSystem: GroupCharacteristicTypeCS
Id: epi-group-characteristic-type
Title: "Group Characteristic Type Code System (ePI)"
Description: "The axis a population characteristic describes (e.g., sex, age, body weight, organ function), for use in Group definitions of populations and sub-populations."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* ^caseSensitive = true
* #sex "Sex" "Sex parameter for clinical use of the population (e.g., for dosing, pharmacokinetics, or safety warnings)."
* #age "Age" "Age of the population, expressed as a range."
* #body-weight "Body weight" "Body weight of the population, expressed as a range."
* #race "Race" "Race / ethnic grouping of the population."
* #pregnancy-lactation-status "Pregnancy and lactation status" "Whether the population is pregnant or breastfeeding (e.g., pregnant women, breastfeeding women)."
* #substance-use "Substance use" "Use of tobacco, alcohol or recreational drugs by the population (e.g., smokers, non-drinkers)."
* #renal-function "Renal function" "Renal function of the population, typically expressed as a creatinine-clearance range."
* #hepatic-function "Hepatic function" "Hepatic function / degree of hepatic impairment."
* #immune-status "Immune status" "Immune competence of the population (e.g., immunocompromised, chronic immune suppression)."

//=========================
ValueSet: GroupCharacteristicType
Id: group-characteristic-type
Title: "Group Characteristic Type (ePI)"
Description: "The axis a population characteristic describes. Extensible: real product information regularly stratifies on axes not enumerated here."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* include codes from system GroupCharacteristicTypeCS

//=========================
ValueSet: SexValuesForGroup
Id: sex-values-for-group
Title: "Sex Values for Group (ePI)"
Description: "Sex values for a population characteristic."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* include codes from system http://hl7.org/fhir/administrative-gender

//=========================
ValueSet: GroupRaceValue
Id: group-race-value
Title: "Group Race Value (ePI)"
Description: "Seed value set for race / ethnic grouping, using the HL7 v3 Race code system (the CDC race categories). Extensible - replace or extend with the regulator-mandated race code system as needed."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* $v3-race#2106-3 "White"
* $v3-race#2054-5 "Black or African American"
* $v3-race#2028-9 "Asian"
* $v3-race#1002-5 "American Indian or Alaska Native"
* $v3-race#2076-8 "Native Hawaiian or Other Pacific Islander"

//=========================
ValueSet: GroupPregnancyLactationStatusValue
Id: group-pregnancy-lactation-status-value
Title: "Group Pregnancy and Lactation Status Value (ePI)"
Description: "Seed value set for pregnancy and lactation status relevant to dosing and clinical use (SmPC section 4.6). Extensible."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#77386006 "Pregnant"
* $sct#866041003 "Mother currently breastfeeding"

//=========================
ValueSet: GroupSubstanceUseValue
Id: group-substance-use-value
Title: "Group Substance Use Value (ePI)"
Description: "Seed value set for tobacco, alcohol and recreational drug use relevant to dosing and clinical use. Extensible."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#77176002 "Smoker"
* $sct#8392000 "Non-smoker"
* $sct#219006 "Current drinker of alcohol"
* $sct#105542008 "Current non-drinker of alcohol"
* $sct#417284009 "Current drug user"
* $sct#228367002 "Does not misuse drugs"

//=========================
ValueSet: GroupImmuneStatusValue
Id: group-immune-status-value
Title: "Group Immune Status Value (ePI)"
Description: "Seed value set for immune status relevant to dosing. Extensible."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#370388006 "Patient immunocompromised"
* $sct#86406008 "Human immunodeficiency virus infection"

//=========================
ValueSet: GroupHepaticFunctionValue
Id: group-hepatic-function-value
Title: "Group Hepatic Function Value (ePI)"
Description: "Seed value set for hepatic function / degree of hepatic impairment. Placeholder concepts; extensible - replace with the regulator-mandated severity grading (e.g., Child-Pugh) as needed."
* insert HL7Publisher
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* ^experimental = true
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#59927004 "Hepatic failure"
* $sct#235856003 "Disorder of liver"
