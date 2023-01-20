library ChlamydiaScreening_CDS version '2'

using QUICK
using FHIR version '5.0.0'

codesystem "SNOMED": 'http://snomed.info/sct'

valueset "Female Administrative Sex": '2.16.840.1.113883.3.560.100.2'


context QuestionnaireResponse

define "low_literacy":
	item[0].linkID == "healthliteracy" and item[0].code == "Low"
    return "Add synonyms to data"


