Profile: GroupUvEpi
Parent: Group
Id: Group-uv-epi
Title: "Group (ePI)"
Description: """Group (ePI) - a definitional population used to stratify clinical use and dosing.

A Group is the single, canonical representation of a population in an ePI. It is referenced from:
* ClinicalUseDefinition.population - the population an indication / contraindication / interaction / undesirable effect / warning applies to, and
* (conceptually) the population a structured dose is intended for.

Each population axis (sex, age, weight, race, pregnancy and lactation status, substance use, renal/hepatic function, immune status) is one `characteristic`. Multiple characteristics are combined with AND. The slicing is **open**: real product information regularly stratifies on axes not enumerated here, and authors may add further characteristics."""
* ^status = #active
* ^experimental = true
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-wg].valueCode = #brr
* membership = #definitional
* membership ^short = "definitional: the population is described by its characteristics (e.g., adults with severe renal impairment), not by a list of individuals"
* membership ^definition = "Always definitional in ePI. The group describes the population that an indication, contraindication, interaction, undesirable effect, warning or dose applies to, using its characteristics (e.g., age, body weight, renal function). It never lists individual patients."
* type = #person
* characteristic 1..*
* characteristic ^slicing.discriminator.type = #value
* characteristic ^slicing.discriminator.path = "code"
* characteristic ^slicing.rules = #open
* characteristic ^short = "One population axis. Combine multiple characteristics with AND. Open: add further axes as needed."
* characteristic contains
    clinical-use-sex 0..1 and
    age 0..1 and
    bodyWeight 0..1 and
    race 0..* and
    pregnancyLactationStatus 0..* and
    substanceUse 0..* and
    renalFunction 0..1 and
    hepaticFunction 0..1 and
    immuneStatus 0..*
// --- clinical-use-sex ---
* characteristic[clinical-use-sex].code = $epi-gct#sex
* characteristic[clinical-use-sex].value[x] only CodeableConcept
* characteristic[clinical-use-sex].valueCodeableConcept from SexValuesForGroup (extensible)
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
// --- pregnancy and lactation status ---
* characteristic[pregnancyLactationStatus].code = $epi-gct#pregnancy-lactation-status
* characteristic[pregnancyLactationStatus].value[x] only CodeableConcept
* characteristic[pregnancyLactationStatus].valueCodeableConcept from GroupPregnancyLactationStatusValue (extensible)
* characteristic[pregnancyLactationStatus] ^short = "Pregnancy or lactation status (e.g., pregnant, breastfeeding)"
// --- substance use ---
* characteristic[substanceUse].code = $epi-gct#substance-use
* characteristic[substanceUse].value[x] only CodeableConcept
* characteristic[substanceUse].valueCodeableConcept from GroupSubstanceUseValue (extensible)
* characteristic[substanceUse] ^short = "Tobacco, alcohol or recreational drug use (e.g., smoker, non-drinker)"
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
