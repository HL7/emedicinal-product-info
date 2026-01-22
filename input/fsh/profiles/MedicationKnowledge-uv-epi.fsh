Profile: MedicationKnowledgeUvEpi
Parent: MedicationKnowledge
Id: MedicationKnowledge-uv-epi
Title: "MedicationKnowledge (ePI)"
Description: "MedicationKnowledge (ePI) - ported from Business Friendly ePI Outline"
* ^status = #active
// * ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
// * ^extension[=].valueCode = #brr
* identifier.system 1..1
* identifier.value 1..1
* code.coding 1..1
* code.coding.system 1..1
* code.coding.code 1..1
* code.coding.display 1..1
* status ^short = "active | inactive | entered-in-error"
* status ^definition = "A code to indicate if the medication is in active use."
* name ^short = "Common name for the medication"
* name ^definition = "Common name for the medication"
* indicationGuideline ^short = "Guidelines for administration of the medication"
* indicationGuideline ^definition = "Guidelines for administration of the medication"
* indicationGuideline.indication.coding 1..1
* indicationGuideline.indication.coding.system 1..1
* indicationGuideline.indication.coding.code 1..1
* indicationGuideline.indication.coding.display 1..1
* indicationGuideline.dosingGuideline ^short = "Guidelines for dosage of the medication"
* indicationGuideline.dosingGuideline ^definition = "Guidelines for dosage of the medication"
* indicationGuideline.dosingGuideline.treatmentIntent.coding 1..1
* indicationGuideline.dosingGuideline.treatmentIntent.coding.system 1..1
* indicationGuideline.dosingGuideline.treatmentIntent.coding.code 1..1
* indicationGuideline.dosingGuideline.treatmentIntent.coding.display 1..1
* indicationGuideline.dosingGuideline.dosage ^short = "Dosage for the medication"
* indicationGuideline.dosingGuideline.dosage ^definition = "Dosage for the medication"
* indicationGuideline.dosingGuideline.dosage.type.coding 1..1
* indicationGuideline.dosingGuideline.dosage.type.coding.system 1..1
* indicationGuideline.dosingGuideline.dosage.type.coding.code 1..1
* indicationGuideline.dosingGuideline.dosage.type.coding.display 1..1
* indicationGuideline.dosingGuideline.dosage.dosage ^short = "Dosage for the medication"
* indicationGuideline.dosingGuideline.dosage.dosage ^definition = "Dosage for the medication"
* indicationGuideline.dosingGuideline.administrationTreatment.coding 1..1
* indicationGuideline.dosingGuideline.administrationTreatment.coding.system 1..1
* indicationGuideline.dosingGuideline.administrationTreatment.coding.code 1..1
* indicationGuideline.dosingGuideline.administrationTreatment.coding.display 1..1
* indicationGuideline.dosingGuideline.patientCharacteristic.coding 1..1
* indicationGuideline.dosingGuideline.patientCharacteristic.coding.system 1..1
* indicationGuideline.dosingGuideline.patientCharacteristic.coding.code 1..1
* indicationGuideline.dosingGuideline.patientCharacteristic.coding.display 1..1
