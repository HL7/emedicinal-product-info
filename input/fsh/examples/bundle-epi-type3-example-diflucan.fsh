// ============================================================================
// Diflucan (fluconazole) - Type 3 example exercising the dosing/population model
// against a real, complex SmPC (multiple indications x populations x regimens).
//
// Demonstrates:
//  * Same indication, dose varies by population  -> multiple dosingGuideline
//    rows under one indicationGuideline, keyed by patientCharacteristic
//    (adult vs child vs term newborn for mucosal candidiasis).
//  * Loading + maintenance, dose ranges, mg/kg rates, frequency-driven bands.
//  * No double-encoding: where the dose population equals the indication's
//    population (invasive candidiasis, adults), patientCharacteristic is empty
//    and the population lives only on ClinicalUseDefinition.population -> Group.
//  * Cross-cutting renal modifier represented ONCE as guidance (a Warning CUD
//    + a renal-function Group + narrative), NOT enumerated per indication,
//    because FHIR Dosage cannot express "50% of the indication dose".
// ============================================================================

Instance: bundle-epi-type3-example-diflucan
InstanceOf: BundleEpiType3
Usage: #example
Title: "Bundle - ePI Type 3 Diflucan Example"
Description: "Bundle - ePI Type 3 Diflucan (fluconazole) Example - structured dosing across indications and populations"
* id = "bundle-epi-type3-example-diflucan"
* meta.versionId = "1.0"
* meta.lastUpdated = "2026-06-17T10:00:00Z"
* meta.profile = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/bundle-epi-type3"
* type = #document
* timestamp = "2026-06-17T10:00:00Z"
* identifier.system = $ema-id
* identifier.value = "DIFLUCAN-BUNDLE-TYPE3"
* entry[composition].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Composition/composition-diflucan"
* entry[composition].resource = composition-diflucan
* entry[organization].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Organization/org-diflucan"
* entry[organization].resource = org-diflucan
* entry[medicinalProduct].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-diflucan"
* entry[medicinalProduct].resource = mpd-diflucan
* entry[medicationKnowledge].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/MedicationKnowledge/mk-diflucan"
* entry[medicationKnowledge].resource = mk-diflucan
* entry[clinicalUseDefinitionIndication][0].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/ClinicalUseDefinition/cud-diflucan-mucosal"
* entry[clinicalUseDefinitionIndication][0].resource = cud-diflucan-mucosal
* entry[clinicalUseDefinitionIndication][+].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/ClinicalUseDefinition/cud-diflucan-invasive"
* entry[clinicalUseDefinitionIndication][=].resource = cud-diflucan-invasive
* entry[clinicalUseDefinitionWarning].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/ClinicalUseDefinition/cud-diflucan-renal"
* entry[clinicalUseDefinitionWarning].resource = cud-diflucan-renal
// Only Groups referenced by a ClinicalUseDefinition.population are bundle entries
// (a document Bundle requires every entry to be reachable from the Composition).
// The child / term-newborn populations are dose-stratification only and are
// captured inline via MedicationKnowledge patientCharacteristic, so they need no Group resource.
* entry[group][0].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Group/group-diflucan-adult"
* entry[group][0].resource = group-diflucan-adult
* entry[group][+].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Group/group-diflucan-renal"
* entry[group][=].resource = group-diflucan-renal

// ---------------------------------------------------------------------------
// Organization + Medicinal Product (minimal)
// ---------------------------------------------------------------------------
Instance: org-diflucan
InstanceOf: OrganizationUvEpi
Usage: #example
Title: "Organization - Diflucan MAH"
Description: "Organization - Diflucan Marketing Authorisation Holder"
* id = "org-diflucan"
* identifier.system = $spor-oms
* identifier.value = "LOC-100000999"
* active = true
* name = "Example Pharma Ltd."

Instance: mpd-diflucan
InstanceOf: MedicinalProductDefinitionUvEpi
Usage: #example
Title: "MedicinalProductDefinition - Diflucan 150 mg capsule"
Description: "MedicinalProductDefinition - Diflucan (fluconazole) 150 mg capsule"
* id = "mpd-diflucan"
* identifier.system = $ema-id
* identifier.value = "DIFLUCAN-150MG"
* status = $publication-status#active "Active"
* name.productName = "Diflucan 150 mg capsule"

// ---------------------------------------------------------------------------
// Populations (definitional Groups) - the single source of population truth
// ---------------------------------------------------------------------------
Instance: group-diflucan-adult
InstanceOf: GroupUvEpi
Usage: #example
Title: "Group - Adults"
Description: "Group - Adults (≥ 18 years)"
* type = #person
* membership = #definitional
* name = "Adults"
* characteristic[age].code = $epi-gct#age "Age"
* characteristic[age].valueRange.low = 18 'a' "years"
* characteristic[age].exclude = false

Instance: group-diflucan-renal
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
// Indications (ClinicalUseDefinition) - population lives here via Group
// ---------------------------------------------------------------------------
// Mucosal candidiasis: indication is general (no population); the dose is
// stratified by population inside MedicationKnowledge via patientCharacteristic.
Instance: cud-diflucan-mucosal
InstanceOf: ClinicalUseDefinitionIndicationUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Indication Oropharyngeal Candidiasis"
Description: "ClinicalUseDefinition - Indication: mucosal (oropharyngeal) candidiasis"
* id = "cud-diflucan-mucosal"
* identifier.system = $example-id
* identifier.value = "cud-diflucan-mucosal"
* status = $publication-status#active "Active"
* type = #indication
* subject = Reference(http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-diflucan)
* indication.diseaseSymptomProcedure.concept = $sct#79740000 "Candidiasis of mouth"
* category = $epi-ig#indication "Indication"

// Invasive candidiasis: indication applies to adults -> population on the CUD.
// The single adult dose row below carries NO patientCharacteristic (no double-encoding).
Instance: cud-diflucan-invasive
InstanceOf: ClinicalUseDefinitionIndicationUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Indication Invasive Candidiasis"
Description: "ClinicalUseDefinition - Indication: invasive candidiasis (adults)"
* id = "cud-diflucan-invasive"
* identifier.system = $example-id
* identifier.value = "cud-diflucan-invasive"
* status = $publication-status#active "Active"
* type = #indication
* subject = Reference(http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-diflucan)
* population = Reference(group-diflucan-adult)
* population.display = "Adults"
* indication.diseaseSymptomProcedure.concept = $sct#70572005 "Invasive candidiasis"
* category = $epi-ig#indication "Indication"

// Cross-cutting renal-impairment dose modifier, represented ONCE as guidance.
// FHIR Dosage cannot express "50% of the indication dose", so the relationship
// is narrative; the affected population is structured as a Group.
Instance: cud-diflucan-renal
InstanceOf: ClinicalUseDefinitionWarningUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Warning Renal Dose Adjustment"
Description: "ClinicalUseDefinition - Warning: dosage adjustment required in renal impairment (applies across all multiple-dose indications)"
* id = "cud-diflucan-renal"
* identifier.system = $example-id
* identifier.value = "cud-diflucan-renal"
* status = $publication-status#active "Active"
* type = #warning
* subject = Reference(http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-diflucan)
* population = Reference(group-diflucan-renal)
* population.display = "Renal impairment (CrCl ≤ 50 mL/min)"
* warning.code = $sct#723188008 "Renal insufficiency"
* warning.code.text = "For multiple-dose therapy, after a normal loading dose, give 50% of the recommended daily dose when CrCl ≤ 50 mL/min (no haemodialysis); give 100% of the recommended dose after each haemodialysis session. Single-dose therapy needs no adjustment. This rule applies to every multiple-dose indication."
* category = $epi-ig#warning "Warning"

// ---------------------------------------------------------------------------
// MedicationKnowledge - structured dosing
// ---------------------------------------------------------------------------
Instance: mk-diflucan
InstanceOf: MedicationKnowledgeUvEpi
Usage: #example
Title: "MedicationKnowledge - Diflucan"
Description: "MedicationKnowledge - Diflucan structured dosing across indications and populations"
* id = "mk-diflucan"
* identifier.system = $example-id
* identifier.value = "mk-diflucan"
* status = #active

// === Indication 1: Mucosal (oropharyngeal) candidiasis ===
// Dose varies by population WITHIN one indication -> three dosingGuideline rows,
// each keyed by patientCharacteristic (the indication itself is general).
* indicationGuideline[0].indication.reference = Reference(cud-diflucan-mucosal)
// -- Adults --
* indicationGuideline[0].dosingGuideline[0].patientCharacteristic.type = $epi-gct#age "Age"
* indicationGuideline[0].dosingGuideline[0].patientCharacteristic.valueRange.low = 18 'a' "years"
* indicationGuideline[0].dosingGuideline[0].dosage[0].type.text = "Loading dose (Day 1)"
* indicationGuideline[0].dosingGuideline[0].dosage[0].dosage.sequence = 1
* indicationGuideline[0].dosingGuideline[0].dosage[0].dosage.text = "200 to 400 mg on Day 1"
* indicationGuideline[0].dosingGuideline[0].dosage[0].dosage.doseAndRate.doseRange.low = 200 'mg' "mg"
* indicationGuideline[0].dosingGuideline[0].dosage[0].dosage.doseAndRate.doseRange.high = 400 'mg' "mg"
* indicationGuideline[0].dosingGuideline[0].dosage[1].type.text = "Maintenance"
* indicationGuideline[0].dosingGuideline[0].dosage[1].dosage.sequence = 2
* indicationGuideline[0].dosingGuideline[0].dosage[1].dosage.text = "100 to 200 mg once daily for 7 to 21 days"
* indicationGuideline[0].dosingGuideline[0].dosage[1].dosage.timing.repeat.frequency = 1
* indicationGuideline[0].dosingGuideline[0].dosage[1].dosage.timing.repeat.period = 1
* indicationGuideline[0].dosingGuideline[0].dosage[1].dosage.timing.repeat.periodUnit = #d
* indicationGuideline[0].dosingGuideline[0].dosage[1].dosage.doseAndRate.doseRange.low = 100 'mg' "mg"
* indicationGuideline[0].dosingGuideline[0].dosage[1].dosage.doseAndRate.doseRange.high = 200 'mg' "mg"
// -- Children (28 days to 11 years): weight-based mg/kg --
* indicationGuideline[0].dosingGuideline[1].patientCharacteristic.type = $epi-gct#age "Age"
* indicationGuideline[0].dosingGuideline[1].patientCharacteristic.valueRange.low = 28 'd' "days"
* indicationGuideline[0].dosingGuideline[1].patientCharacteristic.valueRange.high = 11 'a' "years"
* indicationGuideline[0].dosingGuideline[1].dosage[0].type.text = "Initial dose"
* indicationGuideline[0].dosingGuideline[1].dosage[0].dosage.sequence = 1
* indicationGuideline[0].dosingGuideline[1].dosage[0].dosage.text = "6 mg/kg on the first day"
* indicationGuideline[0].dosingGuideline[1].dosage[0].dosage.doseAndRate.doseQuantity = 6 'mg/kg' "mg/kg"
* indicationGuideline[0].dosingGuideline[1].dosage[1].type.text = "Subsequent dose"
* indicationGuideline[0].dosingGuideline[1].dosage[1].dosage.sequence = 2
* indicationGuideline[0].dosingGuideline[1].dosage[1].dosage.text = "3 mg/kg once daily"
* indicationGuideline[0].dosingGuideline[1].dosage[1].dosage.timing.repeat.frequency = 1
* indicationGuideline[0].dosingGuideline[1].dosage[1].dosage.timing.repeat.period = 1
* indicationGuideline[0].dosingGuideline[1].dosage[1].dosage.timing.repeat.periodUnit = #d
* indicationGuideline[0].dosingGuideline[1].dosage[1].dosage.doseAndRate.doseQuantity = 3 'mg/kg' "mg/kg"
// -- Term newborn (0 to 14 days): same mg/kg, but frequency-driven (every 72 h) --
* indicationGuideline[0].dosingGuideline[2].patientCharacteristic.type = $epi-gct#age "Age"
* indicationGuideline[0].dosingGuideline[2].patientCharacteristic.valueRange.low = 0 'd' "days"
* indicationGuideline[0].dosingGuideline[2].patientCharacteristic.valueRange.high = 14 'd' "days"
* indicationGuideline[0].dosingGuideline[2].dosage[0].type.text = "Neonatal dose"
* indicationGuideline[0].dosingGuideline[2].dosage[0].dosage.sequence = 1
* indicationGuideline[0].dosingGuideline[2].dosage[0].dosage.text = "3 mg/kg every 72 hours (max 12 mg/kg every 72 hours)"
* indicationGuideline[0].dosingGuideline[2].dosage[0].dosage.timing.repeat.frequency = 1
* indicationGuideline[0].dosingGuideline[2].dosage[0].dosage.timing.repeat.period = 72
* indicationGuideline[0].dosingGuideline[2].dosage[0].dosage.timing.repeat.periodUnit = #h
* indicationGuideline[0].dosingGuideline[2].dosage[0].dosage.doseAndRate.doseQuantity = 3 'mg/kg' "mg/kg"
* indicationGuideline[0].dosingGuideline[2].dosage[0].dosage.maxDosePerPeriod.numerator = 12 'mg/kg' "mg/kg"
* indicationGuideline[0].dosingGuideline[2].dosage[0].dosage.maxDosePerPeriod.denominator = 72 'h' "hours"

// === Indication 2: Invasive candidiasis (adults) ===
// Population is carried by the indication's ClinicalUseDefinition.population (Group = Adults).
// The dose row therefore has NO patientCharacteristic -> no double-encoding.
* indicationGuideline[1].indication.reference = Reference(cud-diflucan-invasive)
* indicationGuideline[1].dosingGuideline[0].dosage[0].type.text = "Loading dose (Day 1)"
* indicationGuideline[1].dosingGuideline[0].dosage[0].dosage.sequence = 1
* indicationGuideline[1].dosingGuideline[0].dosage[0].dosage.text = "800 mg on Day 1"
* indicationGuideline[1].dosingGuideline[0].dosage[0].dosage.doseAndRate.doseQuantity = 800 'mg' "mg"
* indicationGuideline[1].dosingGuideline[0].dosage[1].type.text = "Maintenance"
* indicationGuideline[1].dosingGuideline[0].dosage[1].dosage.sequence = 2
* indicationGuideline[1].dosingGuideline[0].dosage[1].dosage.text = "400 mg once daily"
* indicationGuideline[1].dosingGuideline[0].dosage[1].dosage.timing.repeat.frequency = 1
* indicationGuideline[1].dosingGuideline[0].dosage[1].dosage.timing.repeat.period = 1
* indicationGuideline[1].dosingGuideline[0].dosage[1].dosage.timing.repeat.periodUnit = #d
* indicationGuideline[1].dosingGuideline[0].dosage[1].dosage.doseAndRate.doseQuantity = 400 'mg' "mg"

// ---------------------------------------------------------------------------
// Composition (lean) - links the structured resources into the SmPC sections
// ---------------------------------------------------------------------------
Instance: composition-diflucan
InstanceOf: CompositionEpiType1
Usage: #example
Title: "Composition - Diflucan SmPC"
Description: "Composition - Diflucan Summary of Product Characteristics"
* id = "composition-diflucan"
* meta.versionId = "1"
* meta.lastUpdated = "2026-06-17T10:00:00Z"
* identifier.system = $example-id
* identifier.value = "composition-diflucan"
* status = #final
* language = #en
* version = "1.0"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Diflucan Summary of Product Characteristics</p></div>"
* type = $spor-rms#100000155532 "Summary of Product Characteristics"
* subject = Reference(http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-diflucan)
* date = "2026-06-17"
* author = Reference(org-diflucan)
* title = "Diflucan 150 mg capsule - Summary of Product Characteristics"
* section.id = "diflucan-root"
* section.title = "SUMMARY OF PRODUCT CHARACTERISTICS"
* section.code = $spor-rms#200000029791 "SUMMARY OF PRODUCT CHARACTERISTICS"
* section.text.status = #generated
* section.text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'>Summary of Product Characteristics for Diflucan</div>"
// 4.1 Therapeutic indications
* section.section[0].id = "diflucan-4-1"
* section.section[=].title = "4.1 Therapeutic indications"
* section.section[=].code = $spor-rms#200000029799 "4.1 Therapeutic indications"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Treatment of mucosal and invasive candidiasis.</p></div>"
* section.section[=].entry[0] = Reference(cud-diflucan-mucosal)
* section.section[=].entry[+] = Reference(cud-diflucan-invasive)
// 4.2 Posology and method of administration
* section.section[+].id = "diflucan-4-2"
* section.section[=].title = "4.2 Posology and method of administration"
* section.section[=].code = $spor-rms#200000029800 "4.2 Posology and method of administration"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Dose depends on the indication and the patient population (see structured dosing). Renal impairment requires dose adjustment for multiple-dose therapy.</p></div>"
* section.section[=].entry[0] = Reference(mk-diflucan)
* section.section[=].entry[+] = Reference(cud-diflucan-renal)
