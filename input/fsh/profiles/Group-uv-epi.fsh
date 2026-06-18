Profile: GroupUvEpi
Parent: Group
Id: Group-uv-epi
Title: "Group (ePI)"
Description: """Group (ePI) - a definitional population used to stratify clinical use and dosing.

A Group is the single, canonical representation of a population in an ePI. It is referenced from:
* ClinicalUseDefinition.population - the population an indication / contraindication / interaction / undesirable effect / warning applies to, and
* (conceptually) the population a structured dose is intended for.

Each population axis (sex, age, weight, race, lifestyle, renal/hepatic function, immune status) is one `characteristic`. Multiple characteristics are combined with AND. The slicing is **open**: real product information regularly stratifies on axes not enumerated here, and authors may add further characteristics."""
* ^status = #active
* ^experimental = true
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* membership = #definitional
* membership ^short = "definitional - the group is defined by the characteristics below, not by an enumerated member list"
* type = #person
* characteristic 1..*
* characteristic ^slicing.discriminator.type = #pattern
* characteristic ^slicing.discriminator.path = "code"
* characteristic ^slicing.rules = #open
* characteristic ^short = "One population axis. Combine multiple characteristics with AND. Open: add further axes as needed."
* characteristic contains
    sex 0..1 and
    age 0..1 and
    bodyWeight 0..1 and
    race 0..* and
    lifestyle 0..* and
    renalFunction 0..1 and
    hepaticFunction 0..1 and
    immuneStatus 0..*
// --- sex ---
* characteristic[sex].code = $epi-gct#sex
* characteristic[sex].value[x] only CodeableConcept
* characteristic[sex].valueCodeableConcept from GroupSexValue (extensible)
// --- age (range) ---
* characteristic[age].code = $epi-gct#age
* characteristic[age].value[x] only Range
* characteristic[age] ^short = "Age range. Use UCUM 'a' (years) or 'd' (days) so neonatal/paediatric bands can be expressed."
// --- body weight (range) ---
* characteristic[bodyWeight].code = $epi-gct#body-weight
* characteristic[bodyWeight].value[x] only Range
* characteristic[bodyWeight] ^short = "Body weight as a population selector (e.g., ≥ 40 kg). Distinct from mg/kg dose rates, which are expressed in Dosage.doseAndRate."
// --- race ---
* characteristic[race].code = $epi-gct#race
* characteristic[race].value[x] only CodeableConcept
* characteristic[race].valueCodeableConcept from GroupRaceValue (extensible)
// --- lifestyle ---
* characteristic[lifestyle].code = $epi-gct#lifestyle
* characteristic[lifestyle].value[x] only CodeableConcept
* characteristic[lifestyle].valueCodeableConcept from GroupLifestyleValue (extensible)
// --- renal function (creatinine clearance range) ---
* characteristic[renalFunction].code = $epi-gct#renal-function
* characteristic[renalFunction].value[x] only Range
* characteristic[renalFunction] ^short = "Renal function, typically a creatinine-clearance range in mL/min."
// --- hepatic function ---
* characteristic[hepaticFunction].code = $epi-gct#hepatic-function
* characteristic[hepaticFunction].value[x] only CodeableConcept
* characteristic[hepaticFunction].valueCodeableConcept from GroupHepaticFunctionValue (extensible)
// --- immune status ---
* characteristic[immuneStatus].code = $epi-gct#immune-status
* characteristic[immuneStatus].value[x] only CodeableConcept
* characteristic[immuneStatus].valueCodeableConcept from GroupImmuneStatusValue (extensible)
