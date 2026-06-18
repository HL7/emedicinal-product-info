This page describes how the ePI represents **populations** and **structured dosing**, and the rules that keep the two consistent. It is the normative companion to the [Group (ePI)](StructureDefinition-Group-uv-epi.html) and [MedicationKnowledge (ePI)](StructureDefinition-MedicationKnowledge-uv-epi.html) profiles.

### The shape of the problem

Product information stratifies both **clinical use** (which indications, contraindications, interactions, warnings and undesirable effects apply to whom) and **dosing** (how much, how often, for how long) by population. A single drug routinely carries many indications, each with several populations, each with one or more dosing regimens. The model below keeps a **single source of truth** for population while still allowing dose to vary within an indication.

### Group is the canonical population

A population is always a **[Group (ePI)](StructureDefinition-Group-uv-epi.html)** resource. It is `definitional` (defined by criteria, not an enumerated member list) and describes one or more **axes** as `characteristic` entries, combined with AND:

| Axis | `characteristic.code` | value |
|---|---|---|
| Sex | `sex` | CodeableConcept (administrative gender) |
| Age | `age` | Range (UCUM `a` years / `d` days) |
| Body weight | `body-weight` | Range |
| Race | `race` | CodeableConcept |
| Lifestyle | `lifestyle` | CodeableConcept |
| Renal function | `renal-function` | Range (e.g. creatinine clearance in mL/min) |
| Hepatic function | `hepatic-function` | CodeableConcept |
| Immune status | `immune-status` | CodeableConcept |

The characteristic slicing is **open**: real labels stratify on axes not listed here, and authors may add further `characteristic` entries. Each `ClinicalUseDefinition.population` references one of these Groups.

### Dosing links to indication; population stratifies the dose

Structured dosing lives in **MedicationKnowledge** under `indicationGuideline`:

* `indicationGuideline.indication` references the **Indication ClinicalUseDefinition** — the dose is keyed to the indication.
* `indicationGuideline.dosingGuideline.dosage` carries the structured regimen: `dosage.type` (loading/maintenance/…), `timing`, `doseAndRate` (absolute amounts, ranges, or weight-based `mg/kg` rates), `boundsDuration`, `maxDosePerPeriod`.
* `indicationGuideline.dosingGuideline.patientCharacteristic` stratifies the dose **within** a single indication, using the **same axis vocabulary** as `Group.characteristic` (the [Group Characteristic Type](ValueSet-group-characteristic-type.html) value set).

### Rule 1 — Do not double-encode the population

There are two places a population can appear: on the indication's `ClinicalUseDefinition.population` (a Group) and on the dose's `patientCharacteristic`. Use exactly one:

* When the dose population **equals** the indication population, populate `ClinicalUseDefinition.population` and **leave `patientCharacteristic` empty**.
* Use `patientCharacteristic` **only** to split a dose into sub-populations *within* one indication (e.g. adult vs child vs term-newborn dosing for the same condition).

The [Diflucan example](Bundle-bundle-epi-type3-example-diflucan.html) shows both: mucosal candidiasis (general indication, three dose rows keyed by age) and invasive candidiasis (adults, population on the CUD, dose row with no `patientCharacteristic`).

### Rule 2 — Organ-function adjustments are a single guidance block, not a table

Renal- and hepatic-impairment dosing is usually expressed as a **modifier** of every other indication's dose (e.g. "give 50% of the recommended dose when CrCl ≤ 50 mL/min"). FHIR `Dosage` cannot express "a percentage of the indication dose", and enumerating an adjusted dose for every indication × impairment band explodes the bundle and misrepresents a *rule* as a *table*.

Therefore:

* Represent the affected population **once** as a Group (e.g. a `renal-function` Range).
* Represent the adjustment **once** as guidance — a Warning `ClinicalUseDefinition` whose `population` references that Group and whose text states the rule — and/or as narrative in the posology section.
* **Do not** replicate impairment-adjusted doses across indications.

### Rule 3 — `dosage.text` is authoritative; structure is best-effort

Some dosing is irreducibly narrative ("use adult or paediatric dosing per weight and pubertal development", "longer if immunocompromised"). Always provide a human-readable `dosage.text`; populate the structured fields as far as they faithfully capture the regimen. `dosage.type` may be coded where a suitable code system exists, otherwise use text (loading/maintenance/initial rarely have standard codes).

### Two roles of weight

Weight appears in two distinct places — keep them separate:

* **Population selector** — `Group.characteristic[body-weight]` (e.g. patients ≥ 40 kg).
* **Dose denominator** — a `mg/kg` rate in `Dosage.doseAndRate` (e.g. 6 mg/kg).

### Severity

Disease severity ("up to 800 mg in severe disease") is a property of the condition, not of the patient, so it is **not** a population axis. Carry the mild-to-severe span in the **dose range** plus `dosage.text`.
