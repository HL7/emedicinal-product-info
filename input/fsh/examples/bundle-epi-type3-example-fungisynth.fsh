// ============================================================================
// Fungisynth (synthazole) - Type 3 example exercising the dosing/population model.
// SYNTHETIC: product, substance and wording are invented; the scenario mirrors a
// complex real-world SmPC (multiple indications x populations x regimens).
//
// Demonstrates (draft dosing model, see dosing-population-model.html):
//  * Dosing sits on the indication it treats: ClinicalUseDefinition.indication
//    carries one DosingGuideline extension per (sub-)population.
//  * Same indication, dose varies by population -> three dosing guidelines on
//    the mucosal candidiasis indication, each pointing to a fully defined
//    sub-population Group (adults, children, term newborns).
//  * Indication population = dose population -> the population is on
//    ClinicalUseDefinition.population and the dosing guideline has no
//    population of its own (invasive candidiasis, adults).
//  * Loading + maintenance phases, dose ranges, mg/kg doses, every-72-hours timing.
//  * The renal-impairment rule ("50% of the recommended dose") is a modifier of
//    every indication, so it stays a single Warning + Group, not extra dose rows.
// ============================================================================

Instance: bundle-epi-type3-example-fungisynth
InstanceOf: BundleEpiType3
Usage: #example
Title: "Bundle - ePI Type 3 Fungisynth Example"
Description: "Bundle - ePI Type 3 Fungisynth (synthazole) Example - structured dosing across indications and populations"
* id = "bundle-epi-type3-example-fungisynth"
* meta.versionId = "2.0"
* meta.lastUpdated = "2026-10-28T10:00:00Z"
* meta.profile = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/bundle-epi-type3"
* type = #document
* timestamp = "2026-10-28T10:00:00Z"
* identifier.system = $ema-id
* identifier.value = "FUNGISYNTH-BUNDLE-TYPE3"
* entry[composition].fullUrl = "urn:uuid:31228ca8-a846-5d8c-8e3a-e23c11a4628d"
* entry[composition].resource = composition-fungisynth
* entry[organization].fullUrl = "urn:uuid:a15fa17f-0ae2-5729-ade2-4d7950ab93f2"
* entry[organization].resource = org-fungisynth
* entry[medicinalProduct].fullUrl = "urn:uuid:841c8d66-6460-5861-9a65-c050af14879f"
* entry[medicinalProduct].resource = mpd-fungisynth
* entry[clinicalUseDefinitionIndication][0].fullUrl = "urn:uuid:a4f5f28b-6ad6-54a5-93c3-3ca65dfd9e9d"
* entry[clinicalUseDefinitionIndication][0].resource = cud-fungisynth-mucosal
* entry[clinicalUseDefinitionIndication][+].fullUrl = "urn:uuid:a0abde73-1d53-561d-974e-436ed90d453e"
* entry[clinicalUseDefinitionIndication][=].resource = cud-fungisynth-invasive
* entry[clinicalUseDefinitionWarning].fullUrl = "urn:uuid:245e41b3-e0f3-5efe-a2ae-14d2a84fc26c"
* entry[clinicalUseDefinitionWarning].resource = cud-fungisynth-renal
// Every population and sub-population is a fully defined Group entry.
* entry[group][0].fullUrl = "urn:uuid:3950162d-4748-5e9a-8b7e-6b3934e2d946"
* entry[group][0].resource = group-fungisynth-adult
* entry[group][+].fullUrl = "urn:uuid:8095cfb5-29f3-550b-958e-bb99f121642e"
* entry[group][=].resource = group-fungisynth-child
* entry[group][+].fullUrl = "urn:uuid:0c28d8f4-38a7-5d57-b45a-7ba68e19eb72"
* entry[group][=].resource = group-fungisynth-term-newborn
* entry[group][+].fullUrl = "urn:uuid:d5c67721-0cd3-5e6d-9d1d-51cd36acb687"
* entry[group][=].resource = group-fungisynth-renal

// ---------------------------------------------------------------------------
// Organization + Medicinal Product (minimal)
// ---------------------------------------------------------------------------
Instance: org-fungisynth
InstanceOf: OrganizationUvEpi
Usage: #example
Title: "Organization - Fungisynth MAH"
Description: "Organization - Fungisynth Marketing Authorisation Holder"
* id = "org-fungisynth"
* identifier.system = $spor-oms
* identifier.value = "LOC-100000999"
* active = true
* name = "Example Pharma Ltd."

Instance: mpd-fungisynth
InstanceOf: MedicinalProductDefinitionUvEpi
Usage: #example
Title: "MedicinalProductDefinition - Fungisynth 150 mg capsule"
Description: "MedicinalProductDefinition - Fungisynth (synthazole) 150 mg capsule"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><b>Fungisynth 150 mg capsule</b></p><p>Capsule containing 150 mg synthazole.</p></div>"
* id = "mpd-fungisynth"
* identifier.system = $ema-id
* identifier.value = "FUNGISYNTH-150MG"
* status = $publication-status#active "Active"
* name.productName = "Fungisynth 150 mg capsule"

// ---------------------------------------------------------------------------
// Populations and sub-populations (definitional Groups, each fully defined)
// ---------------------------------------------------------------------------
Instance: group-fungisynth-adult
InstanceOf: GroupUvEpi
Usage: #example
Title: "Group - Adults (Fungisynth)"
Description: "Group - Adults (18 years and over)"
* type = #person
* membership = #definitional
* name = "Adults"
* characteristic[age].code = $epi-gct#age "Age"
* characteristic[age].valueRange.low = 18 'a' "years"
* characteristic[age].exclude = false

Instance: group-fungisynth-child
InstanceOf: GroupUvEpi
Usage: #example
Title: "Group - Children (28 days to 11 years)"
Description: "Group - Children aged 28 days to 11 years"
* type = #person
* membership = #definitional
* name = "Children (28 days to 11 years)"
* characteristic[age].code = $epi-gct#age "Age"
* characteristic[age].valueRange.low = 28 'd' "days"
* characteristic[age].valueRange.high = 11 'a' "years"
* characteristic[age].exclude = false

Instance: group-fungisynth-term-newborn
InstanceOf: GroupUvEpi
Usage: #example
Title: "Group - Term newborns (0 to 14 days)"
Description: "Group - Term newborn infants aged 0 to 14 days"
* type = #person
* membership = #definitional
* name = "Term newborns (0 to 14 days)"
* characteristic[age].code = $epi-gct#age "Age"
* characteristic[age].valueRange.low = 0 'd' "days"
* characteristic[age].valueRange.high = 14 'd' "days"
* characteristic[age].exclude = false

Instance: group-fungisynth-renal
InstanceOf: GroupUvEpi
Usage: #example
Title: "Group - Renal impairment (CrCl ≤ 50 mL/min)"
Description: "Group - Patients with creatinine clearance ≤ 50 mL/min, not on haemodialysis"
* type = #person
* membership = #definitional
* name = "Renal impairment (CrCl ≤ 50 mL/min)"
* characteristic[renalFunction].code = $epi-gct#renal-function "Renal function"
* characteristic[renalFunction].valueRange.high = 50 'mL/min' "mL/min"
* characteristic[renalFunction].exclude = false

// ---------------------------------------------------------------------------
// Indications (ClinicalUseDefinition) with structured dosing
// ---------------------------------------------------------------------------
// Mucosal candidiasis: the indication itself is general (no population).
// The dose differs by age, so there are three dosing guidelines, each pointing
// to a fully defined sub-population Group.
Instance: cud-fungisynth-mucosal
InstanceOf: ClinicalUseDefinitionIndicationUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Indication Oropharyngeal Candidiasis"
Description: "ClinicalUseDefinition - Indication: mucosal (oropharyngeal) candidiasis, with dosing for adults, children and term newborns"
* id = "cud-fungisynth-mucosal"
* identifier.system = $example-id
* identifier.value = "cud-fungisynth-mucosal"
* status = $publication-status#active "Active"
* type = #indication
* subject.reference = "urn:uuid:841c8d66-6460-5861-9a65-c050af14879f"
* indication.diseaseSymptomProcedure.concept = $sct#79740000 "Candidiasis of mouth"
* category = $epi-ig#indication "Indication"
// -- Adults --
* indication.extension[dosingGuideline][0].extension[population].valueReference.reference = "urn:uuid:3950162d-4748-5e9a-8b7e-6b3934e2d946"
* indication.extension[dosingGuideline][0].extension[population].valueReference.display = "Adults"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[type].valueCodeableConcept.text = "Loading dose (Day 1)"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.sequence = 1
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.text = "200 to 400 mg on Day 1"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.count = 1
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.doseAndRate.doseRange.low = 200 'mg' "mg"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.doseAndRate.doseRange.high = 400 'mg' "mg"
* indication.extension[dosingGuideline][0].extension[dosage][1].extension[type].valueCodeableConcept.text = "Maintenance"
* indication.extension[dosingGuideline][0].extension[dosage][1].extension[instruction][0].valueDosage.sequence = 2
* indication.extension[dosingGuideline][0].extension[dosage][1].extension[instruction][0].valueDosage.text = "100 to 200 mg once daily for 7 to 21 days"
* indication.extension[dosingGuideline][0].extension[dosage][1].extension[instruction][0].valueDosage.timing.repeat.frequency = 1
* indication.extension[dosingGuideline][0].extension[dosage][1].extension[instruction][0].valueDosage.timing.repeat.period = 1
* indication.extension[dosingGuideline][0].extension[dosage][1].extension[instruction][0].valueDosage.timing.repeat.periodUnit = #d
* indication.extension[dosingGuideline][0].extension[dosage][1].extension[instruction][0].valueDosage.doseAndRate.doseRange.low = 100 'mg' "mg"
* indication.extension[dosingGuideline][0].extension[dosage][1].extension[instruction][0].valueDosage.doseAndRate.doseRange.high = 200 'mg' "mg"
// -- Children (28 days to 11 years): weight-based mg/kg --
* indication.extension[dosingGuideline][1].extension[population].valueReference.reference = "urn:uuid:8095cfb5-29f3-550b-958e-bb99f121642e"
* indication.extension[dosingGuideline][1].extension[population].valueReference.display = "Children (28 days to 11 years)"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[type].valueCodeableConcept.text = "Initial dose (Day 1)"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.sequence = 1
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.text = "6 mg/kg on the first day"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.count = 1
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.doseAndRate.doseQuantity = 6 'mg/kg' "mg/kg"
* indication.extension[dosingGuideline][1].extension[dosage][1].extension[type].valueCodeableConcept.text = "Subsequent dose"
* indication.extension[dosingGuideline][1].extension[dosage][1].extension[instruction][0].valueDosage.sequence = 2
* indication.extension[dosingGuideline][1].extension[dosage][1].extension[instruction][0].valueDosage.text = "3 mg/kg once daily"
* indication.extension[dosingGuideline][1].extension[dosage][1].extension[instruction][0].valueDosage.timing.repeat.frequency = 1
* indication.extension[dosingGuideline][1].extension[dosage][1].extension[instruction][0].valueDosage.timing.repeat.period = 1
* indication.extension[dosingGuideline][1].extension[dosage][1].extension[instruction][0].valueDosage.timing.repeat.periodUnit = #d
* indication.extension[dosingGuideline][1].extension[dosage][1].extension[instruction][0].valueDosage.doseAndRate.doseQuantity = 3 'mg/kg' "mg/kg"
// -- Term newborns (0 to 14 days): same mg/kg, every 72 hours --
* indication.extension[dosingGuideline][2].extension[population].valueReference.reference = "urn:uuid:0c28d8f4-38a7-5d57-b45a-7ba68e19eb72"
* indication.extension[dosingGuideline][2].extension[population].valueReference.display = "Term newborns (0 to 14 days)"
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[type].valueCodeableConcept.text = "Neonatal dose"
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][0].valueDosage.sequence = 1
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][0].valueDosage.text = "3 mg/kg every 72 hours (max 12 mg/kg every 72 hours)"
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.frequency = 1
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.period = 72
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.periodUnit = #h
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][0].valueDosage.doseAndRate.doseQuantity = 3 'mg/kg' "mg/kg"
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][0].valueDosage.maxDosePerPeriod.numerator = 12 'mg/kg' "mg/kg"
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][0].valueDosage.maxDosePerPeriod.denominator = 72 'h' "hours"

// Invasive candidiasis: the indication applies to adults, so the population is
// on ClinicalUseDefinition.population. The dose population is the same, so the
// dosing guideline has no population of its own (no double-encoding).
Instance: cud-fungisynth-invasive
InstanceOf: ClinicalUseDefinitionIndicationUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Indication Invasive Candidiasis"
Description: "ClinicalUseDefinition - Indication: invasive candidiasis (adults), with dosing"
* id = "cud-fungisynth-invasive"
* identifier.system = $example-id
* identifier.value = "cud-fungisynth-invasive"
* status = $publication-status#active "Active"
* type = #indication
* subject.reference = "urn:uuid:841c8d66-6460-5861-9a65-c050af14879f"
* population.reference = "urn:uuid:3950162d-4748-5e9a-8b7e-6b3934e2d946"
* population.display = "Adults"
* indication.diseaseSymptomProcedure.concept = $sct#70572005 "Invasive candidiasis"
* category = $epi-ig#indication "Indication"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[type].valueCodeableConcept.text = "Loading dose (Day 1)"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.sequence = 1
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.text = "800 mg on Day 1"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.count = 1
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.doseAndRate.doseQuantity = 800 'mg' "mg"
* indication.extension[dosingGuideline][0].extension[dosage][1].extension[type].valueCodeableConcept.text = "Maintenance"
* indication.extension[dosingGuideline][0].extension[dosage][1].extension[instruction][0].valueDosage.sequence = 2
* indication.extension[dosingGuideline][0].extension[dosage][1].extension[instruction][0].valueDosage.text = "400 mg once daily"
* indication.extension[dosingGuideline][0].extension[dosage][1].extension[instruction][0].valueDosage.timing.repeat.frequency = 1
* indication.extension[dosingGuideline][0].extension[dosage][1].extension[instruction][0].valueDosage.timing.repeat.period = 1
* indication.extension[dosingGuideline][0].extension[dosage][1].extension[instruction][0].valueDosage.timing.repeat.periodUnit = #d
* indication.extension[dosingGuideline][0].extension[dosage][1].extension[instruction][0].valueDosage.doseAndRate.doseQuantity = 400 'mg' "mg"

// Cross-cutting renal-impairment dose modifier, represented ONCE as guidance.
// FHIR Dosage cannot express "50% of the indication dose", so the relationship
// is narrative; the affected population is structured as a Group.
Instance: cud-fungisynth-renal
InstanceOf: ClinicalUseDefinitionWarningUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Warning Renal Dose Adjustment"
Description: "ClinicalUseDefinition - Warning: dosage adjustment required in renal impairment (applies across all multiple-dose indications)"
* id = "cud-fungisynth-renal"
* identifier.system = $example-id
* identifier.value = "cud-fungisynth-renal"
* status = $publication-status#active "Active"
* type = #warning
* subject.reference = "urn:uuid:841c8d66-6460-5861-9a65-c050af14879f"
* population.reference = "urn:uuid:d5c67721-0cd3-5e6d-9d1d-51cd36acb687"
* population.display = "Renal impairment (CrCl ≤ 50 mL/min)"
* warning.code = $sct#723188008 "Renal insufficiency"
* warning.code.text = "In renal impairment (creatinine clearance 50 mL/min or less, not on haemodialysis), give the usual first dose, then half of the usual daily dose for multiple-dose treatment. Patients on haemodialysis receive the full dose after each session. No change is needed for single-dose treatment. The rule applies to every multiple-dose indication."
* category = $epi-ig#warning "Warning"

// ---------------------------------------------------------------------------
// Composition (lean) - links the structured resources into the SmPC sections
// ---------------------------------------------------------------------------
Instance: composition-fungisynth
InstanceOf: CompositionUvEpi
Usage: #example
Title: "Composition - Fungisynth SmPC"
Description: "Composition - Fungisynth Summary of Product Characteristics"
* id = "composition-fungisynth"
* meta.versionId = "1"
* meta.lastUpdated = "2026-06-17T10:00:00Z"
* identifier.system = $example-id
* identifier.value = "composition-fungisynth"
* status = #final
* language = #en
* version = "1.0"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Fungisynth Summary of Product Characteristics</p></div>"
* type = $spor-rms#100000155532 "Summary of Product Characteristics"
* subject.reference = "urn:uuid:841c8d66-6460-5861-9a65-c050af14879f"
* date = "2026-06-17"
* author.reference = "urn:uuid:a15fa17f-0ae2-5729-ade2-4d7950ab93f2"
* title = "Fungisynth 150 mg capsule - Summary of Product Characteristics"
* section.id = "fungisynth-root"
* section.title = "SUMMARY OF PRODUCT CHARACTERISTICS"
* section.code = $spor-rms#200000029791 "SUMMARY OF PRODUCT CHARACTERISTICS"
* section.text.status = #generated
* section.text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'>Summary of Product Characteristics for Fungisynth</div>"
// 4.1 Therapeutic indications
* section.section[0].id = "fungisynth-4-1"
* section.section[=].title = "4.1 Therapeutic indications"
* section.section[=].code = $spor-rms#200000029799 "4.1 Therapeutic indications"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Treatment of mucosal and invasive candidiasis.</p></div>"
* section.section[=].entry[0].reference = "urn:uuid:a4f5f28b-6ad6-54a5-93c3-3ca65dfd9e9d"
* section.section[=].entry[+].reference = "urn:uuid:a0abde73-1d53-561d-974e-436ed90d453e"
// 4.2 Posology and method of administration
* section.section[+].id = "fungisynth-4-2"
* section.section[=].title = "4.2 Posology and method of administration"
* section.section[=].code = $spor-rms#200000029800 "4.2 Posology and method of administration"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Dose depends on the indication and the patient population (structured dosing is carried on each indication). Renal impairment requires dose adjustment for multiple-dose therapy.</p></div>"
* section.section[=].entry[0].reference = "urn:uuid:a4f5f28b-6ad6-54a5-93c3-3ca65dfd9e9d"
* section.section[=].entry[+].reference = "urn:uuid:a0abde73-1d53-561d-974e-436ed90d453e"
* section.section[=].entry[+].reference = "urn:uuid:245e41b3-e0f3-5efe-a2ae-14d2a84fc26c"
