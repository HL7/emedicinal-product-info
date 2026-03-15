Profile: MedicationKnowledgeUvEpi
Parent: MedicationKnowledge
Id: MedicationKnowledge-uv-epi
Title: "MedicationKnowledge (ePI)"
Description: "MedicationKnowledge (ePI) - ported from Business Friendly ePI Outline"
* ^status = #active
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
// * ^extension[=].valueCode = #brr
* ^experimental = true
* identifier.system 1..1
* identifier.value 1..1
* code 0..0
* status ^short = "active | inactive | entered-in-error"
* status ^definition = "A code to indicate if the medication is in active use."
* name ^short = "Common name for the medication"
* name ^definition = "Common name for the medication"
* indicationGuideline 1..*
* indicationGuideline ^short = "Guidelines for administration of the medication"
* indicationGuideline ^definition = "Guidelines for administration of the medication"
* indicationGuideline.indication 1..*
* indicationGuideline.indication only CodeableReference(ClinicalUseDefinitionIndicationUvEpi)
* indicationGuideline.dosingGuideline 1..*
* indicationGuideline.dosingGuideline ^short = "Guidelines for dosage of the medication"
* indicationGuideline.dosingGuideline ^definition = "Guidelines for dosage of the medication"
* indicationGuideline.dosingGuideline.treatmentIntent 0..1
* indicationGuideline.dosingGuideline.treatmentIntent.coding 1..1
* indicationGuideline.dosingGuideline.treatmentIntent.coding.system 1..1
* indicationGuideline.dosingGuideline.treatmentIntent.coding.code 1..1
* indicationGuideline.dosingGuideline.treatmentIntent.coding.display 1..1
* indicationGuideline.dosingGuideline.dosage 1..*
* indicationGuideline.dosingGuideline.dosage ^short = "Dosage for the medication"
* indicationGuideline.dosingGuideline.dosage ^definition = "Dosage for the medication"
* indicationGuideline.dosingGuideline.dosage.type.coding 1..1
* indicationGuideline.dosingGuideline.dosage.type.coding.system 1..1
* indicationGuideline.dosingGuideline.dosage.type.coding.code 1..1
* indicationGuideline.dosingGuideline.dosage.type.coding.display 1..1
* indicationGuideline.dosingGuideline.dosage.type ^short = "Category of dosage (e.g., Target, Maximum, Minimum)"
* indicationGuideline.dosingGuideline.dosage.type ^definition = "The kind of dosage being defined, such as the intended target dose, or a maximum or minimum boundary. This allows differentiation between standard therapeutic doses and limit thresholds."
* indicationGuideline.dosingGuideline.dosage.dosage ^short = "Dosage for the medication"
* indicationGuideline.dosingGuideline.dosage.dosage ^definition = "Dosage for the medication"
* indicationGuideline.dosingGuideline.administrationTreatment 0..0
* indicationGuideline.dosingGuideline.patientCharacteristic 0..*
* indicationGuideline.dosingGuideline.patientCharacteristic.type.coding 1..1
* indicationGuideline.dosingGuideline.patientCharacteristic.type.coding.system 1..1
* indicationGuideline.dosingGuideline.patientCharacteristic.type.coding.code 1..1
* indicationGuideline.dosingGuideline.patientCharacteristic.type.coding.display 1..1
* indicationGuideline.dosingGuideline.patientCharacteristic.type from PatientCharacteristicType (example)
