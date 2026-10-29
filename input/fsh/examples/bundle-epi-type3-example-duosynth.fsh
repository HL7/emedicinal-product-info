// ============================================================================
// Duosynth (synthavir tablets co-packaged with boostavir tablets)
// Type 3 example for the draft dosing model. SYNTHETIC: the product, substances
// and wording are invented; the scenario mirrors a real co-packaged medicine.
//
// Demonstrates:
//  * A co-packaged product: one PackagedProductDefinition containing two
//    ManufacturedItemDefinitions (pink synthavir 150 mg, white boostavir
//    100 mg), each with its own dose in the same regimen.
//  * Each Dosage names its manufactured item with the Dosage Manufactured Item
//    extension; instructions that share a Dosage.sequence are taken together.
//  * Sub-populations with their own regimens (renal function bands), each a
//    fully defined Group (adults AND eGFR band), under one indication whose
//    population is adults.
//  * A phased regimen (severe renal impairment: Day 1, then Days 2 to 5).
// eGFR bands are in mL/min; ranges are inclusive, so "<60" is written as a
// high of 59 and "<30" as 29.
// ============================================================================

Instance: bundle-epi-type3-example-duosynth
InstanceOf: BundleEpiType3
Usage: #example
Title: "Bundle - ePI Type 3 Duosynth Example"
Description: "Bundle - ePI Type 3 Duosynth (synthavir + boostavir co-pack) Example - dosing per manufactured item and per renal-function sub-population"
* id = "bundle-epi-type3-example-duosynth"
* meta.versionId = "1.0"
* meta.lastUpdated = "2026-10-28T10:00:00Z"
* meta.profile = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/bundle-epi-type3"
* type = #document
* timestamp = "2026-10-28T10:00:00Z"
* identifier.system = $example-id
* identifier.value = "DUOSYNTH-BUNDLE-TYPE3"
* entry[composition].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Composition/composition-duosynth"
* entry[composition].resource = composition-duosynth
* entry[organization].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Organization/org-duosynth"
* entry[organization].resource = org-duosynth
* entry[medicinalProduct].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-duosynth"
* entry[medicinalProduct].resource = mpd-duosynth
* entry[packagedProduct].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/PackagedProductDefinition/ppd-duosynth"
* entry[packagedProduct].resource = ppd-duosynth
* entry[manufacturedItem][0].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/ManufacturedItemDefinition/mid-duosynth-synthavir"
* entry[manufacturedItem][0].resource = mid-duosynth-synthavir
* entry[manufacturedItem][+].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/ManufacturedItemDefinition/mid-duosynth-boostavir"
* entry[manufacturedItem][=].resource = mid-duosynth-boostavir
* entry[clinicalUseDefinitionIndication].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/ClinicalUseDefinition/cud-duosynth-covid19"
* entry[clinicalUseDefinitionIndication].resource = cud-duosynth-covid19
* entry[group][0].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Group/group-duosynth-adults"
* entry[group][0].resource = group-duosynth-adults
* entry[group][+].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Group/group-duosynth-renal-normal-mild"
* entry[group][=].resource = group-duosynth-renal-normal-mild
* entry[group][+].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Group/group-duosynth-renal-moderate"
* entry[group][=].resource = group-duosynth-renal-moderate
* entry[group][+].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Group/group-duosynth-renal-severe"
* entry[group][=].resource = group-duosynth-renal-severe

// ---------------------------------------------------------------------------
// Organization, product, pack and the two manufactured items
// ---------------------------------------------------------------------------
Instance: org-duosynth
InstanceOf: OrganizationUvEpi
Usage: #example
Title: "Organization - Duosynth example MAH"
Description: "Organization - Example marketing authorisation holder for the Duosynth example"
* id = "org-duosynth"
* identifier.system = $example-id
* identifier.value = "org-duosynth"
* active = true
* name = "Example Pharma Inc."

Instance: mpd-duosynth
InstanceOf: MedicinalProductDefinitionUvEpi
Usage: #example
Title: "MedicinalProductDefinition - Duosynth"
Description: "MedicinalProductDefinition - Duosynth film-coated tablets (synthavir tablets co-packaged with boostavir tablets)"
* id = "mpd-duosynth"
* identifier.system = $example-id
* identifier.value = "DUOSYNTH-150-100"
* status = $publication-status#active "Active"
* name.productName = "Duosynth film-coated tablets"

Instance: mid-duosynth-synthavir
InstanceOf: ManufacturedItemDefinitionUvEpi
Usage: #example
Title: "ManufacturedItemDefinition - Synthavir 150 mg tablet"
Description: "ManufacturedItemDefinition - Pink, oval synthavir 150 mg film-coated tablet"
* id = "mid-duosynth-synthavir"
* identifier.system = $example-id
* identifier.value = "mid-duosynth-synthavir"
* status = #active
* name = "Synthavir 150 mg film-coated tablet (pink)"
* manufacturedDoseForm = $edqm#10221000 "Film-coated tablet"
* unitOfPresentation = $edqm#15054000 "Tablet"

Instance: mid-duosynth-boostavir
InstanceOf: ManufacturedItemDefinitionUvEpi
Usage: #example
Title: "ManufacturedItemDefinition - Boostavir 100 mg tablet"
Description: "ManufacturedItemDefinition - White to off-white boostavir 100 mg film-coated tablet"
* id = "mid-duosynth-boostavir"
* identifier.system = $example-id
* identifier.value = "mid-duosynth-boostavir"
* status = #active
* name = "Boostavir 100 mg film-coated tablet (white)"
* manufacturedDoseForm = $edqm#10221000 "Film-coated tablet"
* unitOfPresentation = $edqm#15054000 "Tablet"

// One carton of 5 daily blister cards; each card holds 4 synthavir and 2 boostavir tablets.
Instance: ppd-duosynth
InstanceOf: PackagedProductDefinitionUvEpi
Usage: #example
Title: "PackagedProductDefinition - Duosynth carton of 5 daily blister cards"
Description: "PackagedProductDefinition - Carton of 30 tablets in 5 daily-dose blister cards (4 synthavir + 2 boostavir tablets per card)"
* id = "ppd-duosynth"
* identifier.system = $example-id
* identifier.value = "ppd-duosynth"
* status = $publication-status#active "Active"
* packageFor = Reference(mpd-duosynth)
* description = "A carton of 5 blister cards, one per day of treatment (30 tablets). Each card holds 4 synthavir 150 mg tablets and 2 boostavir 100 mg tablets, with the morning and evening doses marked."
* packaging.type = $spor-rms#100000073498 "Box"
* packaging.quantity = 1
* packaging.packaging.type = $spor-rms#100000073496 "Blister"
* packaging.packaging.quantity = 5
* packaging.packaging.containedItem[0].item.reference = Reference(mid-duosynth-synthavir)
* packaging.packaging.containedItem[0].amount = 4 '{tablet}' "tablet"
* packaging.packaging.containedItem[+].item.reference = Reference(mid-duosynth-boostavir)
* packaging.packaging.containedItem[=].amount = 2 '{tablet}' "tablet"

// ---------------------------------------------------------------------------
// Population (indication) and sub-populations (dosing), each fully defined
// ---------------------------------------------------------------------------
Instance: group-duosynth-adults
InstanceOf: GroupUvEpi
Usage: #example
Title: "Group - Adults"
Description: "Adults 18 years and over"
* type = #person
* membership = #definitional
* name = "Adults"
* characteristic[age].code = $epi-gct#age "Age"
* characteristic[age].valueRange.low = 18 'a' "years"
* characteristic[age].exclude = false

Instance: group-duosynth-renal-normal-mild
InstanceOf: GroupUvEpi
Usage: #example
Title: "Group - Adults with eGFR 60 mL/min or more"
Description: "Adults 18 years and over with normal renal function or mild renal impairment (eGFR 60 mL/min or more)"
* type = #person
* membership = #definitional
* name = "Adults with eGFR 60 mL/min or more"
* characteristic[age].code = $epi-gct#age "Age"
* characteristic[age].valueRange.low = 18 'a' "years"
* characteristic[age].exclude = false
* characteristic[renalFunction].code = $epi-gct#renal-function "Renal function"
* characteristic[renalFunction].valueRange.low = 60 'mL/min' "mL/min"
* characteristic[renalFunction].exclude = false

Instance: group-duosynth-renal-moderate
InstanceOf: GroupUvEpi
Usage: #example
Title: "Group - Adults with moderate renal impairment"
Description: "Adults 18 years and over with moderate renal impairment (eGFR 30 to less than 60 mL/min)"
* type = #person
* membership = #definitional
* name = "Adults with moderate renal impairment"
* characteristic[age].code = $epi-gct#age "Age"
* characteristic[age].valueRange.low = 18 'a' "years"
* characteristic[age].exclude = false
* characteristic[renalFunction].code = $epi-gct#renal-function "Renal function"
* characteristic[renalFunction].valueRange.low = 30 'mL/min' "mL/min"
* characteristic[renalFunction].valueRange.high = 59 'mL/min' "mL/min"
* characteristic[renalFunction].exclude = false

Instance: group-duosynth-renal-severe
InstanceOf: GroupUvEpi
Usage: #example
Title: "Group - Adults with severe renal impairment"
Description: "Adults 18 years and over with severe renal impairment (eGFR less than 30 mL/min), including those requiring haemodialysis"
* type = #person
* membership = #definitional
* name = "Adults with severe renal impairment"
* characteristic[age].code = $epi-gct#age "Age"
* characteristic[age].valueRange.low = 18 'a' "years"
* characteristic[age].exclude = false
* characteristic[renalFunction].code = $epi-gct#renal-function "Renal function"
* characteristic[renalFunction].valueRange.high = 29 'mL/min' "mL/min"
* characteristic[renalFunction].exclude = false

// ---------------------------------------------------------------------------
// Indication with structured dosing per sub-population and per manufactured item
// ---------------------------------------------------------------------------
Instance: cud-duosynth-covid19
InstanceOf: ClinicalUseDefinitionIndicationUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Indication COVID-19 (Duosynth)"
Description: "ClinicalUseDefinition - Indication: mild-to-moderate COVID-19 in adults at high risk of progression to severe COVID-19, with dosing by renal function"
* id = "cud-duosynth-covid19"
* identifier.system = $example-id
* identifier.value = "cud-duosynth-covid19"
* status = $publication-status#active "Active"
* type = #indication
* subject = Reference(mpd-duosynth)
* population = Reference(group-duosynth-adults)
* population.display = "Adults"
* indication.diseaseSymptomProcedure.concept = $sct#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2"
* indication.diseaseSymptomProcedure.concept.text = "Treatment of mild or moderate COVID-19 in adults with a high risk of the illness becoming severe"
* category = $epi-ig#indication "Indication"
// -- Normal renal function or mild impairment: the standard regimen --
* indication.extension[dosingGuideline][0].extension[population].valueReference = Reference(group-duosynth-renal-normal-mild)
* indication.extension[dosingGuideline][0].extension[population].valueReference.display = "Adults with eGFR 60 mL/min or more"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[type].valueCodeableConcept.text = "Days 1 to 5"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.extension[DosageManufacturedItem].valueReference = Reference(mid-duosynth-synthavir)
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.extension[DosageManufacturedItem].valueReference.display = "Synthavir 150 mg film-coated tablet (pink)"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.sequence = 1
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.text = "300 mg synthavir (two 150 mg tablets) twice daily, morning and evening, for 5 days"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.frequency = 2
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.period = 1
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.periodUnit = #d
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.boundsDuration = 5 'd' "days"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.route = $sct#26643006 "Oral route"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.doseAndRate.doseQuantity = 300 'mg' "mg"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][1].valueDosage.extension[DosageManufacturedItem].valueReference = Reference(mid-duosynth-boostavir)
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][1].valueDosage.extension[DosageManufacturedItem].valueReference.display = "Boostavir 100 mg film-coated tablet (white)"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][1].valueDosage.sequence = 1
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][1].valueDosage.text = "100 mg boostavir (one 100 mg tablet) twice daily, taken together with synthavir, for 5 days"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][1].valueDosage.timing.repeat.frequency = 2
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][1].valueDosage.timing.repeat.period = 1
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][1].valueDosage.timing.repeat.periodUnit = #d
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][1].valueDosage.timing.repeat.boundsDuration = 5 'd' "days"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][1].valueDosage.route = $sct#26643006 "Oral route"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][1].valueDosage.doseAndRate.doseQuantity = 100 'mg' "mg"
// -- Moderate renal impairment: one synthavir tablet instead of two --
* indication.extension[dosingGuideline][1].extension[population].valueReference = Reference(group-duosynth-renal-moderate)
* indication.extension[dosingGuideline][1].extension[population].valueReference.display = "Adults with moderate renal impairment"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[type].valueCodeableConcept.text = "Days 1 to 5"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.extension[DosageManufacturedItem].valueReference = Reference(mid-duosynth-synthavir)
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.extension[DosageManufacturedItem].valueReference.display = "Synthavir 150 mg film-coated tablet (pink)"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.sequence = 1
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.text = "150 mg synthavir (one 150 mg tablet) twice daily for 5 days"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.frequency = 2
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.period = 1
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.periodUnit = #d
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.boundsDuration = 5 'd' "days"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.route = $sct#26643006 "Oral route"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.doseAndRate.doseQuantity = 150 'mg' "mg"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][1].valueDosage.extension[DosageManufacturedItem].valueReference = Reference(mid-duosynth-boostavir)
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][1].valueDosage.extension[DosageManufacturedItem].valueReference.display = "Boostavir 100 mg film-coated tablet (white)"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][1].valueDosage.sequence = 1
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][1].valueDosage.text = "100 mg boostavir (one 100 mg tablet) twice daily, taken together with synthavir, for 5 days"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][1].valueDosage.timing.repeat.frequency = 2
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][1].valueDosage.timing.repeat.period = 1
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][1].valueDosage.timing.repeat.periodUnit = #d
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][1].valueDosage.timing.repeat.boundsDuration = 5 'd' "days"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][1].valueDosage.route = $sct#26643006 "Oral route"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][1].valueDosage.doseAndRate.doseQuantity = 100 'mg' "mg"
// -- Severe renal impairment (including haemodialysis): Day 1, then Days 2 to 5 --
* indication.extension[dosingGuideline][2].extension[population].valueReference = Reference(group-duosynth-renal-severe)
* indication.extension[dosingGuideline][2].extension[population].valueReference.display = "Adults with severe renal impairment"
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[type].valueCodeableConcept.text = "Day 1"
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][0].valueDosage.extension[DosageManufacturedItem].valueReference = Reference(mid-duosynth-synthavir)
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][0].valueDosage.extension[DosageManufacturedItem].valueReference.display = "Synthavir 150 mg film-coated tablet (pink)"
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][0].valueDosage.sequence = 1
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][0].valueDosage.text = "300 mg synthavir (two 150 mg tablets) once on Day 1"
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.count = 1
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][0].valueDosage.route = $sct#26643006 "Oral route"
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][0].valueDosage.doseAndRate.doseQuantity = 300 'mg' "mg"
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][1].valueDosage.extension[DosageManufacturedItem].valueReference = Reference(mid-duosynth-boostavir)
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][1].valueDosage.extension[DosageManufacturedItem].valueReference.display = "Boostavir 100 mg film-coated tablet (white)"
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][1].valueDosage.sequence = 1
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][1].valueDosage.text = "100 mg boostavir (one 100 mg tablet) once on Day 1, taken together with synthavir"
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][1].valueDosage.timing.repeat.count = 1
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][1].valueDosage.route = $sct#26643006 "Oral route"
* indication.extension[dosingGuideline][2].extension[dosage][0].extension[instruction][1].valueDosage.doseAndRate.doseQuantity = 100 'mg' "mg"
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[type].valueCodeableConcept.text = "Days 2 to 5"
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][0].valueDosage.extension[DosageManufacturedItem].valueReference = Reference(mid-duosynth-synthavir)
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][0].valueDosage.extension[DosageManufacturedItem].valueReference.display = "Synthavir 150 mg film-coated tablet (pink)"
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][0].valueDosage.sequence = 2
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][0].valueDosage.text = "150 mg synthavir (one 150 mg tablet) once daily on Days 2 to 5; on dialysis days, after haemodialysis"
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][0].valueDosage.timing.repeat.frequency = 1
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][0].valueDosage.timing.repeat.period = 1
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][0].valueDosage.timing.repeat.periodUnit = #d
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][0].valueDosage.timing.repeat.boundsDuration = 4 'd' "days"
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][0].valueDosage.route = $sct#26643006 "Oral route"
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][0].valueDosage.doseAndRate.doseQuantity = 150 'mg' "mg"
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][1].valueDosage.extension[DosageManufacturedItem].valueReference = Reference(mid-duosynth-boostavir)
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][1].valueDosage.extension[DosageManufacturedItem].valueReference.display = "Boostavir 100 mg film-coated tablet (white)"
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][1].valueDosage.sequence = 2
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][1].valueDosage.text = "100 mg boostavir (one 100 mg tablet) once daily on Days 2 to 5, taken together with synthavir"
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][1].valueDosage.timing.repeat.frequency = 1
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][1].valueDosage.timing.repeat.period = 1
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][1].valueDosage.timing.repeat.periodUnit = #d
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][1].valueDosage.timing.repeat.boundsDuration = 4 'd' "days"
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][1].valueDosage.route = $sct#26643006 "Oral route"
* indication.extension[dosingGuideline][2].extension[dosage][1].extension[instruction][1].valueDosage.doseAndRate.doseQuantity = 100 'mg' "mg"

// ---------------------------------------------------------------------------
// Composition (lean)
// ---------------------------------------------------------------------------
Instance: composition-duosynth
InstanceOf: CompositionEpiType1
Usage: #example
Title: "Composition - Duosynth SmPC"
Description: "Composition - Duosynth Summary of Product Characteristics (sections used by the dosing example)"
* id = "composition-duosynth"
* meta.versionId = "1"
* meta.lastUpdated = "2026-10-28T10:00:00Z"
* identifier.system = $example-id
* identifier.value = "composition-duosynth"
* status = #final
* language = #en
* version = "1.0"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Duosynth Summary of Product Characteristics</p></div>"
* type = $spor-rms#100000155532 "Summary of Product Characteristics"
* subject = Reference(mpd-duosynth)
* date = "2026-01-31"
* author = Reference(org-duosynth)
* title = "Duosynth film-coated tablets - Summary of Product Characteristics"
* section.id = "duosynth-root"
* section.title = "SUMMARY OF PRODUCT CHARACTERISTICS"
* section.code = $spor-rms#200000029791 "SUMMARY OF PRODUCT CHARACTERISTICS"
* section.text.status = #generated
* section.text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'>Summary of Product Characteristics for Duosynth</div>"
// 4.1 Therapeutic indications
* section.section[0].id = "duosynth-4-1"
* section.section[=].title = "4.1 Therapeutic indications"
* section.section[=].code = $spor-rms#200000029799 "4.1 Therapeutic indications"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Duosynth is used to treat mild or moderate COVID-19 in adults with a high risk of the illness becoming severe.</p></div>"
* section.section[=].entry[0] = Reference(cud-duosynth-covid19)
// 4.2 Posology and method of administration
* section.section[+].id = "duosynth-4-2"
* section.section[=].title = "4.2 Posology and method of administration"
* section.section[=].code = $spor-rms#200000029800 "4.2 Posology and method of administration"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Duosynth contains synthavir tablets and boostavir tablets in one pack, always taken together. Adults take two synthavir 150 mg tablets with one boostavir 100 mg tablet by mouth twice a day for 5 days. The dose is lower in moderate and severe renal impairment (see the structured dosing on the indication).</p></div>"
* section.section[=].entry[0] = Reference(cud-duosynth-covid19)
// 6.5 Nature and contents of container
* section.section[+].id = "duosynth-6-5"
* section.section[=].title = "6.5 Nature and contents of container"
* section.section[=].code = $spor-rms#200000029841 "6.5 Nature and contents of container"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>A carton holds 5 blister cards, one for each day of treatment (30 tablets in total). Each card holds 4 synthavir 150 mg tablets and 2 boostavir 100 mg tablets, with the morning and evening doses marked.</p></div>"
* section.section[=].entry[0] = Reference(ppd-duosynth)
