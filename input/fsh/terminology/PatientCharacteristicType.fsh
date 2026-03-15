ValueSet: PatientCharacteristicType
Id: patient-characteristic-type
Title: "Patient Characteristic Type (ePI)"
Description: "A terminology defining types of patient characteristics (e.g., age, weight, broad demographic categories) for use in dosing and clinical use definitions."
* ^status = #active
* ^experimental = true

// Include broad concepts that can be further qualified
* include codes from system http://snomed.info/sct where concept is-a #248153007 "Male"
* include codes from system http://snomed.info/sct where concept is-a #248152002 "Female"
* include codes from system http://snomed.info/sct where concept is-a #261665006 "Unknown"
* include codes from system http://snomed.info/sct where concept is-a #133936004 "Adult"
* include codes from system http://snomed.info/sct where concept is-a #67822003 "Child"
* include codes from system http://snomed.info/sct where concept is-a #133931009 "Infant"
* include codes from system http://snomed.info/sct where concept is-a #133933007 "Neonate"
* include codes from system http://snomed.info/sct where concept is-a #133937008 "Adolescent"
* include codes from system http://snomed.info/sct where concept is-a #49808004 "Elderly person"
* include codes from system http://snomed.info/sct where concept is-a #27113001 "Body weight"

