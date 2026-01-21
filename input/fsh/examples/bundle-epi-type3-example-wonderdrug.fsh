Instance: bundle-epi-type3-example-wonderdrug
InstanceOf: BundleEpiType3
Usage: #example
Title: "Bundle - ePI Type 3 WonderDrug Example"
Description: "Bundle - ePI Type 3 WonderDrug Example"
* id = "bundle-epi-type3-example-wonderdrug"
* meta.versionId = "1.0"
* meta.lastUpdated = "2023-10-27T10:00:00Z"
* type = #document
* timestamp = "2023-10-27T10:00:00Z"
* identifier.system = $ema-id
* identifier.value = "WONDERDRUG-500MG-BUNDLE-TYPE3"
* entry[composition].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Composition/composition-epi-type3-example-wonderdrug"
* entry[composition].resource = composition-epi-type3-example-wonderdrug
* entry[organization].resource = org-epi-type3-example-pharma
* entry[organization].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Organization/org-epi-type3-example-pharma"
* entry[medicinalProduct][0].resource = mpd-epi-type3-example-wonderdrug
* entry[medicinalProduct][0].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-epi-type3-example-wonderdrug"
// referenced products
* entry[medicinalProduct][1].resource = mpd-epi-type2-example-paracetamol-100mg
* entry[medicinalProduct][1].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-epi-type2-example-paracetamol-100mg"
* entry[medicinalProduct][2].resource = mpd-epi-type2-example-paracetamol-200mg
* entry[medicinalProduct][2].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-epi-type2-example-paracetamol-200mg"
* entry[regulatedAuthorization].resource = ra-epi-type2-example-paracetamol
* entry[regulatedAuthorization].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/RegulatedAuthorization/ra-epi-type2-example-paracetamol"
* entry[packagedProduct].resource = ppd-epi-type2-example-paracetamol
* entry[packagedProduct].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/PackagedProductDefinition/ppd-epi-type2-example-paracetamol"
* entry[manufacturedItem].resource = mid-epi-type2-example-paracetamol
* entry[manufacturedItem].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/ManufacturedItemDefinition/mid-epi-type2-example-paracetamol"
* entry[administrableProduct].resource = apd-epi-type2-example-paracetamol
* entry[administrableProduct].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/AdministrableProductDefinition/apd-epi-type2-example-paracetamol"
* entry[ingredient].resource = ingredient-epi-type2-example-paracetamol-active
* entry[ingredient].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Ingredient/ingredient-epi-type2-example-paracetamol-active"
* entry[medicationKnowledge].resource = medication-knowledge-epi-type3-example
* entry[medicationKnowledge].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/MedicationKnowledge/medication-knowledge-epi-type3-example"
// Clinical Use Definitions
* entry[clinicalUseDefinitionIndication][0].resource = cud-indication-1
* entry[clinicalUseDefinitionIndication][=].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/ClinicalUseDefinition/cud-indication-1"
* entry[clinicalUseDefinitionIndication][+].resource = cud-indication-2
* entry[clinicalUseDefinitionIndication][=].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/ClinicalUseDefinition/cud-indication-2"
* entry[clinicalUseDefinitionContraindication][0].resource = cud-contraindication-1
* entry[clinicalUseDefinitionContraindication][=].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/ClinicalUseDefinition/cud-contraindication-1"
* entry[clinicalUseDefinitionContraindication][+].resource = cud-contraindication-2
* entry[clinicalUseDefinitionContraindication][=].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/ClinicalUseDefinition/cud-contraindication-2"
* entry[clinicalUseDefinitionInteraction][0].resource = cud-interaction-1
* entry[clinicalUseDefinitionInteraction][=].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/ClinicalUseDefinition/cud-interaction-1"
* entry[clinicalUseDefinitionInteraction][+].resource = cud-interaction-2
* entry[clinicalUseDefinitionInteraction][=].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/ClinicalUseDefinition/cud-interaction-2"
// * entry[undesirableEffect]... (add if needed, keeping it covering main types)

Instance: composition-epi-type3-example-wonderdrug
InstanceOf: CompositionEpiType1
Usage: #example
Title: "Composition - ePI Type 3 WonderDrug SMPC"
Description: "Composition - ePI Type 3 WonderDrug Summary of Product Characteristics"
* id = "composition-epi-type3-example-wonderdrug"
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-27T10:00:00Z"
* identifier.system = $example-id
* identifier.value = "composition-epi-type3-example-wonderdrug"
* status = #final
* language = #en
* version = "1.0"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>WonderDrug Summary of Product Characteristics</p></div>"
* type = $spor-rms#100000155532 "Summary of Product Characteristics"
* subject = Reference(http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-epi-type3-example-wonderdrug)
* date = "2023-10-27"
* author = Reference(org-epi-type3-example-pharma)
* title = "WonderDrug 500 mg tablets - Summary of Product Characteristics"

// Parent Section: SUMMARY OF PRODUCT CHARACTERISTICS
* section.title = "SUMMARY OF PRODUCT CHARACTERISTICS"
* section.code = $spor-rms#200000029791 "SUMMARY OF PRODUCT CHARACTERISTICS"
* section.text.status = #generated
* section.text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Summary of Product Characteristics for WonderDrug</div>"

// Section 1: NAME OF THE MEDICINAL PRODUCT
* section.section[0].title = "1. NAME OF THE MEDICINAL PRODUCT"
* section.section[=].code = $spor-rms#200000029792 "1. NAME OF THE MEDICINAL PRODUCT"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>WonderDrug 500 mg tablets</p></div>"

// Section 2: QUALITATIVE AND QUANTITATIVE COMPOSITION
* section.section[+].title = "2. QUALITATIVE AND QUANTITATIVE COMPOSITION"
* section.section[=].code = $spor-rms#200000029793 "2. QUALITATIVE AND QUANTITATIVE COMPOSITION"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Each tablet contains 500 mg of paracetamol.</p></div>"
// Section 2.1: General description
* section.section[=].section[0].title = "2.1 General description"
* section.section[=].section[=].code = $spor-rms#200000029794 "2.1 General description"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>White, round, biconvex tablets.</p></div>"
// Section 2.2: Qualitative and quantitative composition
* section.section[=].section[+].title = "2.2 Qualitative and quantitative composition"
* section.section[=].section[=].code = $spor-rms#200000029795 "2.2 Qualitative and quantitative composition"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Each tablet contains 500 mg paracetamol.</p></div>"
// Excipient(s) with known effect
* section.section[=].section[+].title = "Excipient(s) with known effect"
* section.section[=].section[=].code = $spor-rms#200000029796 "Excipient(s) with known effect"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>For the full list of excipients, see section 6.1.</p></div>"

// Section 3: PHARMACEUTICAL FORM
* section.section[+].title = "3. PHARMACEUTICAL FORM"
* section.section[=].code = $spor-rms#200000029797 "3. PHARMACEUTICAL FORM"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Tablet. White, round, biconvex tablets.</p></div>"

// Section 4: CLINICAL PARTICULARS
* section.section[+].title = "4. CLINICAL PARTICULARS"
* section.section[=].code = $spor-rms#200000029798 "4. CLINICAL PARTICULARS"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Clinical information about WonderDrug.</p></div>"
// Section 4.1: Therapeutic indications
* section.section[=].section[0].title = "4.1 Therapeutic indications"
* section.section[=].section[=].code = $spor-rms#200000029799 "4.1 Therapeutic indications"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Symptomatic treatment of mild to moderate pain and/or fever.</p></div>"
// Section 4.2: Posology and method of administration
* section.section[=].section[+].title = "4.2 Posology and method of administration"
* section.section[=].section[=].code = $spor-rms#200000029800 "4.2 Posology and method of administration"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Adults: 1-2 tablets every 4-6 hours. Maximum 8 tablets in 24 hours.</p></div>"
// Section 4.3: Contraindications
* section.section[=].section[+].title = "4.3 Contraindications"
* section.section[=].section[=].code = $spor-rms#200000029805 "4.3 Contraindications"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Hypersensitivity to paracetamol or any of the excipients.</p></div>"
// Section 4.4: Special warnings and precautions for use
* section.section[=].section[+].title = "4.4 Special warnings and precautions for use"
* section.section[=].section[=].code = $spor-rms#200000029806 "4.4 Special warnings and precautions for use"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Caution in patients with hepatic or renal impairment.</p></div>"
// Section 4.5: Interaction with other medicinal products
* section.section[=].section[+].title = "4.5 Interaction with other medicinal products and other forms of interaction"
* section.section[=].section[=].code = $spor-rms#200000029809 "4.5 Interaction with other medicinal products and other forms of interaction"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Anticoagulants: Enhanced effect of warfarin with prolonged use.</p></div>"
// Section 4.6: Fertility, pregnancy and lactation
* section.section[=].section[+].title = "4.6 Fertility, pregnancy and lactation"
* section.section[=].section[=].code = $spor-rms#200000029811 "4.6 Fertility, pregnancy and lactation"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Can be used during pregnancy and lactation at recommended doses.</p></div>"
// Section 4.7: Effects on ability to drive and use machines
* section.section[=].section[+].title = "4.7 Effects on ability to drive and use machines"
* section.section[=].section[=].code = $spor-rms#200000029815 "4.7 Effects on ability to drive and use machines"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>No known effect.</p></div>"
// Section 4.8: Undesirable effects
* section.section[=].section[+].title = "4.8 Undesirable effects"
* section.section[=].section[=].code = $spor-rms#200000029816 "4.8 Undesirable effects"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.</p><p><b>Summary of adverse reactions:</b></p><ul><li>Very common (≥1/10): Nausea, headache</li><li>Common (≥1/100 to &lt;1/10): Dizziness, fatigue</li><li>Uncommon (≥1/1,000 to &lt;1/100): Allergic reactions, skin rash</li><li>Rare (≥1/10,000 to &lt;1/1,000): Hepatotoxicity</li></ul><table border='1'><tr><th>System Organ Class</th><th>Frequency</th><th>Adverse Reaction</th></tr><tr><td>Gastrointestinal</td><td>Very common</td><td>Nausea</td></tr><tr><td>Nervous system</td><td>Very common</td><td>Headache</td></tr><tr><td>Skin</td><td>Uncommon</td><td>Rash, pruritus</td></tr></table><p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p><p><img src='data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAiIGhlaWdodD0iMTAwIj48Y2lyY2xlIGN4PSI1MCIgY3k9IjUwIiByPSI0MCIgc3Ryb2tlPSJibGFjayIgc3Ryb2tlLXdpZHRoPSIzIiBmaWxsPSJyZWQiIC8+PC9zdmc+' alt='Sample SVG Image' /></p></div>"
// Section 4.9: Overdose
* section.section[=].section[+].title = "4.9 Overdose"
* section.section[=].section[=].code = $spor-rms#200000029819 "4.9 Overdose"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Symptoms: Hepatic damage. Treatment: N-acetylcysteine.</p></div>"

// Section 5: PHARMACOLOGICAL PROPERTIES
* section.section[+].title = "5. PHARMACOLOGICAL PROPERTIES"
* section.section[=].code = $spor-rms#200000029821 "5. PHARMACOLOGICAL PROPERTIES"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Pharmacological properties of WonderDrug.</p></div>"
// Section 5.1: Pharmacodynamic properties
* section.section[=].section[0].title = "5.1 Pharmacodynamic properties"
* section.section[=].section[=].code = $spor-rms#200000029822 "5.1 Pharmacodynamic properties"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Pharmacotherapeutic group: Analgesics, ATC code: N02BE01.</p></div>"
// Section 5.2: Pharmacokinetic properties
* section.section[=].section[+].title = "5.2 Pharmacokinetic properties"
* section.section[=].section[=].code = $spor-rms#200000029827 "5.2 Pharmacokinetic properties"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Rapidly absorbed from the GI tract. Peak plasma concentration in 30-60 minutes.</p></div>"
// Section 5.3: Preclinical safety data
* section.section[=].section[+].title = "5.3 Preclinical safety data"
* section.section[=].section[=].code = $spor-rms#200000029834 "5.3 Preclinical safety data"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>No additional data of relevance.</p></div>"

// Section 6: PHARMACEUTICAL PARTICULARS
* section.section[+].title = "6. PHARMACEUTICAL PARTICULARS"
* section.section[=].code = $spor-rms#200000029836 "6. PHARMACEUTICAL PARTICULARS"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Pharmaceutical particulars for WonderDrug.</p></div>"
// Section 6.1: List of excipients
* section.section[=].section[0].title = "6.1 List of excipients"
* section.section[=].section[=].code = $spor-rms#200000029837 "6.1 List of excipients"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Pregelatinised starch, maize starch, magnesium stearate.</p></div>"
// Section 6.2: Incompatibilities
* section.section[=].section[+].title = "6.2 Incompatibilities"
* section.section[=].section[=].code = $spor-rms#200000029838 "6.2 Incompatibilities"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Not applicable.</p></div>"
// Section 6.3: Shelf life
* section.section[=].section[+].title = "6.3 Shelf life"
* section.section[=].section[=].code = $spor-rms#200000029839 "6.3 Shelf life"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>3 years.</p></div>"
// Section 6.4: Special precautions for storage
* section.section[=].section[+].title = "6.4 Special precautions for storage"
* section.section[=].section[=].code = $spor-rms#200000029840 "6.4 Special precautions for storage"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Store below 25°C.</p></div>"
// Section 6.5: Nature and contents of container
* section.section[=].section[+].title = "6.5 Nature and contents of container"
* section.section[=].section[=].code = $spor-rms#200000029841 "6.5 Nature and contents of container"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>PVC/Aluminium blisters. Pack sizes: 10, 20, 30 tablets.</p></div>"
// Section 6.6: Special precautions for disposal
* section.section[=].section[+].title = "6.6 Special precautions for disposal"
* section.section[=].section[=].code = $spor-rms#200000029842 "6.6 Special precautions for disposal"
* section.section[=].section[=].text.status = #generated
* section.section[=].section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>No special requirements.</p></div>"

// Section 7: MARKETING AUTHORISATION HOLDER
* section.section[+].title = "7. MARKETING AUTHORISATION HOLDER"
* section.section[=].code = $spor-rms#200000029844 "7. MARKETING AUTHORISATION HOLDER"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>WonderPharma Inc., 123 Pharma Way, Prague, Czech Republic</p></div>"

// Section 8: MARKETING AUTHORISATION NUMBER(S)
* section.section[+].title = "8. MARKETING AUTHORISATION NUMBER(S)"
* section.section[=].code = $spor-rms#200000029845 "8. MARKETING AUTHORISATION NUMBER(S)"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>EU/1/23/1234/001</p></div>"

// Section 9: DATE OF FIRST AUTHORISATION/RENEWAL OF THE AUTHORISATION
* section.section[+].title = "9. DATE OF FIRST AUTHORISATION/RENEWAL OF THE AUTHORISATION"
* section.section[=].code = $spor-rms#200000029846 "9. DATE OF FIRST AUTHORISATION/RENEWAL OF THE AUTHORISATION"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Date of first authorisation: 15 January 2020</p></div>"

// Section 10: DATE OF REVISION OF THE TEXT
* section.section[+].title = "10. DATE OF REVISION OF THE TEXT"
* section.section[=].code = $spor-rms#200000029847 "10. DATE OF REVISION OF THE TEXT"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>October 2023</p></div>"

Instance: org-epi-type3-example-pharma
InstanceOf: OrganizationUvEpi
Usage: #example
Title: "Organization - WonderPharma Inc."
Description: "Organization - WonderPharma Inc."
* id = "org-epi-type3-example-pharma"
* identifier.system = $spor-oms
* identifier.value = "LOC-100000000"
* active = true
* type = $spor-rms#220000000034 "Marketing authorisation holder"
* name = "WonderPharma Inc."
* contact.telecom[phone].system = #phone
* contact.telecom[phone].value = "+420 123 456 789"
* contact.telecom[email].system = #email  
* contact.telecom[email].value = "info@wonderpharma.example.com"
* contact.telecom[url].system = #url
* contact.telecom[url].value = "https://www.wonderpharma.example.com"
* contact.address.type = #both
* contact.address.text = "WonderPharma Inc., 123 Pharma Way, Prague 10, 102 37, Czech Republic"
* contact.address.line = "123 Pharma Way"
* contact.address.city = "Prague"
* contact.address.district = "Prague 10"
* contact.address.state = "Central Bohemia"
* contact.address.postalCode = "102 37"
* contact.address.country = "CZ"

Instance: mpd-epi-type3-example-wonderdrug
InstanceOf: MedicinalProductDefinitionUvEpi
Usage: #example
Title: "MedicinalProductDefinition - WonderDrug 500 mg tablets Type 3"
Description: "MedicinalProductDefinition for WonderDrug 500 mg tablets (Type 3 Example)"
* id = "mpd-epi-type3-example-wonderdrug"
* identifier.system = $ema-id
* identifier.value = "WONDERDRUG-500MG"
* status = $publication-status#active "Active"
* domain = $medicinal-product-domain#Human "Human use"
* name.productName = "WonderDrug 500 mg tablets"
* name.part[0].part = "WonderDrug"
* name.part[=].type = $medicinal-product-name-part-type#InventedNamePart "Invented name part"
* name.part[+].part = "500 mg"
* name.part[=].type = $medicinal-product-name-part-type#StrengthPart "Strength part"
* name.part[+].part = "tablets"
* name.part[=].type = http://hl7.org/fhir/medicinal-product-name-part-type#DoseFormPart "Pharmaceutical dose form part"
* name.usage.country = $iso3166#EE "Estonia"
* name.usage.language = urn:ietf:bcp:47#et "Estonian"
* contact.contact = Reference(org-epi-type3-example-pharma)

Instance: mpd-epi-type2-example-paracetamol-100mg
InstanceOf: MedicinalProductDefinitionUvEpi
Usage: #example
Title: "MedicinalProductDefinition - WonderDrug 100 mg tablets"
Description: "MedicinalProductDefinition - WonderDrug 100 mg tablets"
* id = "mpd-epi-type2-example-paracetamol-100mg"
* identifier.system = $ema-id
* identifier.value = "WONDERDRUG-100MG"
* status = $publication-status#active "Active"
* name.productName = "WonderDrug 100 mg tablets"

Instance: mpd-epi-type2-example-paracetamol-200mg
InstanceOf: MedicinalProductDefinitionUvEpi
Usage: #example
Title: "MedicinalProductDefinition - WonderDrug 200 mg tablets"
Description: "MedicinalProductDefinition - WonderDrug 200 mg tablets"
* id = "mpd-epi-type2-example-paracetamol-200mg"
* identifier.system = $ema-id
* identifier.value = "WONDERDRUG-200MG"
* status = $publication-status#active "Active"
* name.productName = "WonderDrug 200 mg tablets"

Instance: cud-indication-1
InstanceOf: ClinicalUseDefinitionIndicationUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Indication Fever"
Description: "ClinicalUseDefinition - Indication Fever"
* id = "cud-indication-1"
* identifier.system = $example-id
* identifier.value = "cud-indication-1"
* status = #active
* type = #indication
* subject = Reference(http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-epi-type3-example-wonderdrug)
* population.display = "Adults"
* indication.diseaseSymptomProcedure.concept = $sct#386661006 "Fever"
* category = $epi-ig#indication

Instance: cud-indication-2
InstanceOf: ClinicalUseDefinitionIndicationUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Indication Pain"
Description: "ClinicalUseDefinition - Indication Pain"
* id = "cud-indication-2"
* identifier.system = $example-id
* identifier.value = "cud-indication-2"
* status = #active
* type = #indication
* subject = Reference(http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-epi-type3-example-wonderdrug)
* population.display = "Adults"
* indication.diseaseSymptomProcedure.concept = $sct#22253000 "Pain"
* category = $epi-ig#indication

Instance: cud-contraindication-1
InstanceOf: ClinicalUseDefinitionContraindicationUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Contraindication Hepatic Failure"
Description: "ClinicalUseDefinition - Contraindication Hepatic Failure"
* id = "cud-contraindication-1"
* identifier.system = $example-id
* identifier.value = "cud-contraindication-1"
* status = #active
* type = #contraindication
* subject = Reference(http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-epi-type3-example-wonderdrug)
* population.display = "Adults"
* contraindication.diseaseSymptomProcedure.concept = $sct#197270009 "Acute hepatic failure"
* category = http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-ig#contraindication

Instance: cud-interaction-1
InstanceOf: ClinicalUseDefinitionInteractionUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Interaction Warfarin"
Description: "ClinicalUseDefinition - Interaction Warfarin"
* id = "cud-interaction-1"
* identifier.system = $example-id
* identifier.value = "cud-interaction-1"
* status = #active
* type = #interaction
* subject = Reference(http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-epi-type3-example-wonderdrug)
* interaction.interactant.itemCodeableConcept = $sct#372756006 "Warfarin"
* interaction.effect.concept = $sct#404684003 "Clinical finding (finding)"
* category = http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-ig#interaction
Instance: cud-contraindication-2
InstanceOf: ClinicalUseDefinitionContraindicationUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Contraindication Paracetamol"
Description: "ClinicalUseDefinition - Contraindication Paracetamol"
* id = "cud-contraindication-2"
* identifier.system = $example-id
* identifier.value = "cud-contraindication-2"
* status = #active
* type = #contraindication
* subject = Reference(http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-epi-type3-example-wonderdrug)
* population.display = "Adults"
* contraindication.otherTherapy.treatment.concept = $sct#763158003 "Medicinal product (product)"
* contraindication.otherTherapy.relationshipType = http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/benefit-and-risk-relationship#contraindicated-only-with "Only contraindicated with"
* category = http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-ig#contraindication

Instance: cud-interaction-2
InstanceOf: ClinicalUseDefinitionInteractionUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Interaction Other"
Description: "ClinicalUseDefinition - Interaction Other"
* id = "cud-interaction-2"
* identifier.system = $example-id
* identifier.value = "cud-interaction-2"
* status = #active
* type = #interaction
* subject = Reference(http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-epi-type3-example-wonderdrug)
* interaction.interactant.itemCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#11289 "Warfarin"
* category = http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-ig#interaction

Instance: medication-knowledge-epi-type3-example
InstanceOf: MedicationKnowledge
Usage: #example
Title: "MedicationKnowledge - WonderDrug"
Description: "MedicationKnowledge - WonderDrug with structured dosing regimen"
* id = "medication-knowledge-epi-type3-example"
* status = #active
* code.text = "WonderDrug 500 mg tablets"
* code.coding = $sct#763158003 "Medicinal product (product)"
// Structured dosing regimen: Week 1 - twice daily, Weeks 2-4 - once daily
* indicationGuideline.dosingGuideline[0].treatmentIntent.text = "Pain relief"
* indicationGuideline.dosingGuideline[=].dosage[0].type.text = "Initial Treatment (Week 1)"
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.sequence = 1
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.text = "Take 1 tablet twice daily for the first week"
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.timing.repeat.frequency = 2
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.timing.repeat.period = 1
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.timing.repeat.periodUnit = #d
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.timing.repeat.boundsDuration.value = 7
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.timing.repeat.boundsDuration.unit = "days"
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.timing.repeat.boundsDuration.system = $ucum
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.timing.repeat.boundsDuration.code = #d
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.doseAndRate.type = http://terminology.hl7.org/CodeSystem/dose-rate-type#ordered "Ordered"
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.doseAndRate.doseQuantity.value = 1
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.doseAndRate.doseQuantity.unit = "tablet"
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.doseAndRate.doseQuantity.system = $edqm
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.doseAndRate.doseQuantity.code = #10219000
// Maintenance dosing (Weeks 2-4)
* indicationGuideline.dosingGuideline[=].dosage[+].type.text = "Maintenance Treatment (Weeks 2-4)"
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.sequence = 2
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.text = "Take 1 tablet once daily for three more weeks"
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.timing.repeat.frequency = 1
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.timing.repeat.period = 1
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.timing.repeat.periodUnit = #d
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.timing.repeat.boundsDuration.value = 21
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.timing.repeat.boundsDuration.unit = "days"
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.timing.repeat.boundsDuration.system = $ucum
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.timing.repeat.boundsDuration.code = #d
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.doseAndRate.type = http://terminology.hl7.org/CodeSystem/dose-rate-type#ordered "Ordered"
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.doseAndRate.doseQuantity.value = 1
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.doseAndRate.doseQuantity.unit = "tablet"
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.doseAndRate.doseQuantity.system = $edqm
* indicationGuideline.dosingGuideline[=].dosage[=].dosage.doseAndRate.doseQuantity.code = #10219000
