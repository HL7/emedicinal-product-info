// ============================================================================
// WonderDrug 500 mg tablets - ePI Type 1 (digital label). The SmPC as narrative; subject and author are given as text because Type 1 carries no product resources.
// ============================================================================

Instance: bundle-epi-type1-example-wonderdrug
InstanceOf: BundleUvEpi
Usage: #example
Title: "Bundle - ePI Type 1 WonderDrug 500 mg tablets"
Description: "Type 1 (digital label): the SmPC as structured narrative only"
* meta.versionId = "1"
* meta.lastUpdated = "2026-10-15T09:00:00Z"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:824ebd41-7549-5f25-aae4-3a3a797f5593"
* type = #document
* timestamp = "2026-10-15T09:00:00Z"
* entry[composition][0].fullUrl = "urn:uuid:c1036fa4-4409-59d4-8461-9cbf291b1cfb"
* entry[composition][=].resource = composition-wonderdrug-tablets-type1

Instance: composition-wonderdrug-tablets-type1
InstanceOf: CompositionUvEpi
Usage: #example
Title: "Composition - WonderDrug 500 mg tablets, Type 1 ePI"
Description: "SmPC for WonderDrug 500 mg tablets as a digital label (narrative only)"
* meta.versionId = "1"
* meta.lastUpdated = "2026-10-15T09:00:00Z"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:1b2a1dad-c39b-532f-906c-c4f1b90bc946"
* language = #en
* version = "1.0"
* contained[binaryImage] = tablet-image
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p><b>WonderDrug 500 mg tablets</b></p><p>Summary of Product Characteristics</p></div>"
* status = #final
* type = $spor-rms#100000155532 "Summary of Product Characteristics"
* subject.display = "WonderDrug 500 mg tablets"
* date = "2026-10-15"
* author.display = "WonderPharma Ltd."
* title = "WonderDrug 500 mg tablets - Summary of Product Characteristics"
* section.id = "smpc"
* section.title = "SUMMARY OF PRODUCT CHARACTERISTICS"
* section.code = $spor-rms#200000029791 "SUMMARY OF PRODUCT CHARACTERISTICS"
* section.text.status = #generated
* section.text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Summary of Product Characteristics: WonderDrug 500 mg tablets</p></div>"
* section.section[0].id = "smpc-1"
* section.section[0].title = "1. NAME OF THE MEDICINAL PRODUCT"
* section.section[0].code = $spor-rms#200000029792 "1. NAME OF THE MEDICINAL PRODUCT"
* section.section[0].text.status = #generated
* section.section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>WonderDrug 500 mg tablets</p></div>"
* section.section[1].id = "smpc-2"
* section.section[1].title = "2. QUALITATIVE AND QUANTITATIVE COMPOSITION"
* section.section[1].code = $spor-rms#200000029793 "2. QUALITATIVE AND QUANTITATIVE COMPOSITION"
* section.section[1].text.status = #generated
* section.section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Each tablet contains 500 mg paracetamol.</p><p><b>Excipient with known effect:</b> each tablet contains 25 mg lactose (as monohydrate).</p><p>For the full list of excipients, see section 6.1.</p></div>"
* section.section[2].id = "smpc-3"
* section.section[2].title = "3. PHARMACEUTICAL FORM"
* section.section[2].code = $spor-rms#200000029797 "3. PHARMACEUTICAL FORM"
* section.section[2].text.status = #generated
* section.section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Tablet.</p><p>White, round, flat tablet, scored on one side and marked WD500 on the other. The score line is only there to help break the tablet if you have difficulty swallowing it whole.</p><p><img src='#tablet-image' alt='WonderDrug 500 mg tablet'/></p></div>"
* section.section[3].id = "smpc-4"
* section.section[3].title = "4. CLINICAL PARTICULARS"
* section.section[3].code = $spor-rms#200000029798 "4. CLINICAL PARTICULARS"
* section.section[3].text.status = #generated
* section.section[3].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>See sections 4.1 to 4.9.</p></div>"
* section.section[3].section[0].id = "smpc-4-1"
* section.section[3].section[0].title = "4.1 Therapeutic indications"
* section.section[3].section[0].code = $spor-rms#200000029799 "4.1 Therapeutic indications"
* section.section[3].section[0].text.status = #generated
* section.section[3].section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>WonderDrug is indicated for the symptomatic treatment of mild to moderate pain and fever in adults and children aged 12 years and over.</p></div>"
* section.section[3].section[1].id = "smpc-4-2"
* section.section[3].section[1].title = "4.2 Posology and method of administration"
* section.section[3].section[1].code = $spor-rms#200000029800 "4.2 Posology and method of administration"
* section.section[3].section[1].text.status = #generated
* section.section[3].section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p><b>Adults and adolescents aged 16 years and over, weighing 50 kg or more:</b> 1 or 2 tablets every 4 to 6 hours as needed. Do not take more than 8 tablets in 24 hours.</p><p><b>Adolescents aged 12 to 15 years, weighing 40 to 49 kg:</b> 1 tablet every 4 to 6 hours as needed. Do not take more than 4 tablets in 24 hours.</p><p>Leave at least 4 hours between doses. Not for children under 12 years.</p><p><b>Method of administration:</b> oral use. Swallow the tablets with water.</p></div>"
* section.section[3].section[2].id = "smpc-4-3"
* section.section[3].section[2].title = "4.3 Contraindications"
* section.section[3].section[2].code = $spor-rms#200000029805 "4.3 Contraindications"
* section.section[3].section[2].text.status = #generated
* section.section[3].section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Hypersensitivity to paracetamol or to any of the excipients listed in section 6.1.</p><p>Severe hepatic impairment.</p></div>"
* section.section[3].section[3].id = "smpc-4-4"
* section.section[3].section[3].title = "4.4 Special warnings and precautions for use"
* section.section[3].section[3].code = $spor-rms#200000029806 "4.4 Special warnings and precautions for use"
* section.section[3].section[3].text.status = #generated
* section.section[3].section[3].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Do not take with any other medicine that contains paracetamol. Taking more than the recommended dose can cause serious liver damage.</p><p>This medicine contains lactose. Patients with rare hereditary problems of galactose intolerance, total lactase deficiency or glucose-galactose malabsorption should not take this medicine.</p></div>"
* section.section[3].section[4].id = "smpc-4-5"
* section.section[3].section[4].title = "4.5 Interaction with other medicinal products and other forms of interaction"
* section.section[3].section[4].code = $spor-rms#200000029809 "4.5 Interaction with other medicinal products and other forms of interaction"
* section.section[3].section[4].text.status = #generated
* section.section[3].section[4].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>The anticoagulant effect of warfarin may be increased by prolonged regular daily use of paracetamol, with an increased risk of bleeding. Occasional doses have no significant effect. Monitor the INR during and after prolonged regular use.</p></div>"
* section.section[3].section[5].id = "smpc-4-6"
* section.section[3].section[5].title = "4.6 Fertility, pregnancy and lactation"
* section.section[3].section[5].code = $spor-rms#200000029811 "4.6 Fertility, pregnancy and lactation"
* section.section[3].section[5].text.status = #generated
* section.section[3].section[5].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>WonderDrug can be used during pregnancy and breast-feeding at the lowest effective dose for the shortest possible time.</p></div>"
* section.section[3].section[6].id = "smpc-4-7"
* section.section[3].section[6].title = "4.7 Effects on ability to drive and use machines"
* section.section[3].section[6].code = $spor-rms#200000029815 "4.7 Effects on ability to drive and use machines"
* section.section[3].section[6].text.status = #generated
* section.section[3].section[6].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>WonderDrug has no or negligible influence on the ability to drive and use machines.</p></div>"
* section.section[3].section[7].id = "smpc-4-8"
* section.section[3].section[7].title = "4.8 Undesirable effects"
* section.section[3].section[7].code = $spor-rms#200000029816 "4.8 Undesirable effects"
* section.section[3].section[7].text.status = #generated
* section.section[3].section[7].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><table><tr><th>Frequency</th><th>Undesirable effect</th></tr><tr><td>Rare (may affect up to 1 in 1,000 people)</td><td>Skin rash</td></tr></table></div>"
* section.section[3].section[8].id = "smpc-4-9"
* section.section[3].section[8].title = "4.9 Overdose"
* section.section[3].section[8].code = $spor-rms#200000029819 "4.9 Overdose"
* section.section[3].section[8].text.status = #generated
* section.section[3].section[8].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Overdose can cause liver damage, which may not be apparent for 24 to 48 hours. Patients should seek medical help immediately, even if they feel well. Treatment: acetylcysteine.</p></div>"
* section.section[4].id = "smpc-5"
* section.section[4].title = "5. PHARMACOLOGICAL PROPERTIES"
* section.section[4].code = $spor-rms#200000029821 "5. PHARMACOLOGICAL PROPERTIES"
* section.section[4].text.status = #generated
* section.section[4].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>See sections 5.1 to 5.3.</p></div>"
* section.section[4].section[0].id = "smpc-5-1"
* section.section[4].section[0].title = "5.1 Pharmacodynamic properties"
* section.section[4].section[0].code = $spor-rms#200000029822 "5.1 Pharmacodynamic properties"
* section.section[4].section[0].text.status = #generated
* section.section[4].section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Pharmacotherapeutic group: other analgesics and antipyretics, anilides. ATC code: N02BE01.</p></div>"
* section.section[4].section[1].id = "smpc-5-2"
* section.section[4].section[1].title = "5.2 Pharmacokinetic properties"
* section.section[4].section[1].code = $spor-rms#200000029827 "5.2 Pharmacokinetic properties"
* section.section[4].section[1].text.status = #generated
* section.section[4].section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Paracetamol is rapidly and almost completely absorbed. Peak plasma concentrations are reached 30 to 60 minutes after an oral dose.</p></div>"
* section.section[4].section[2].id = "smpc-5-3"
* section.section[4].section[2].title = "5.3 Preclinical safety data"
* section.section[4].section[2].code = $spor-rms#200000029834 "5.3 Preclinical safety data"
* section.section[4].section[2].text.status = #generated
* section.section[4].section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>There are no preclinical data of relevance beyond those included in other sections.</p></div>"
* section.section[5].id = "smpc-6"
* section.section[5].title = "6. PHARMACEUTICAL PARTICULARS"
* section.section[5].code = $spor-rms#200000029836 "6. PHARMACEUTICAL PARTICULARS"
* section.section[5].text.status = #generated
* section.section[5].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>See sections 6.1 to 6.6.</p></div>"
* section.section[5].section[0].id = "smpc-6-1"
* section.section[5].section[0].title = "6.1 List of excipients"
* section.section[5].section[0].code = $spor-rms#200000029837 "6.1 List of excipients"
* section.section[5].section[0].text.status = #generated
* section.section[5].section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Maize starch, lactose monohydrate, magnesium stearate.</p></div>"
* section.section[5].section[1].id = "smpc-6-2"
* section.section[5].section[1].title = "6.2 Incompatibilities"
* section.section[5].section[1].code = $spor-rms#200000029838 "6.2 Incompatibilities"
* section.section[5].section[1].text.status = #generated
* section.section[5].section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Not applicable.</p></div>"
* section.section[5].section[2].id = "smpc-6-3"
* section.section[5].section[2].title = "6.3 Shelf life"
* section.section[5].section[2].code = $spor-rms#200000029839 "6.3 Shelf life"
* section.section[5].section[2].text.status = #generated
* section.section[5].section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>3 years.</p></div>"
* section.section[5].section[3].id = "smpc-6-4"
* section.section[5].section[3].title = "6.4 Special precautions for storage"
* section.section[5].section[3].code = $spor-rms#200000029840 "6.4 Special precautions for storage"
* section.section[5].section[3].text.status = #generated
* section.section[5].section[3].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Store below 25 °C. Store in the original package to protect from light.</p></div>"
* section.section[5].section[4].id = "smpc-6-5"
* section.section[5].section[4].title = "6.5 Nature and contents of container"
* section.section[5].section[4].code = $spor-rms#200000029841 "6.5 Nature and contents of container"
* section.section[5].section[4].text.status = #generated
* section.section[5].section[4].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>PVC/aluminium blisters in a cardboard carton. Pack size: 20 tablets (2 blisters of 10 tablets).</p></div>"
* section.section[5].section[5].id = "smpc-6-6"
* section.section[5].section[5].title = "6.6 Special precautions for disposal"
* section.section[5].section[5].code = $spor-rms#200000029842 "6.6 Special precautions for disposal"
* section.section[5].section[5].text.status = #generated
* section.section[5].section[5].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>No special requirements.</p></div>"
* section.section[6].id = "smpc-7"
* section.section[6].title = "7. MARKETING AUTHORISATION HOLDER"
* section.section[6].code = $spor-rms#200000029844 "7. MARKETING AUTHORISATION HOLDER"
* section.section[6].text.status = #generated
* section.section[6].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>WonderPharma Ltd., 1 Example Street, Dublin 2, D02 X123, Ireland</p></div>"
* section.section[7].id = "smpc-8"
* section.section[7].title = "8. MARKETING AUTHORISATION NUMBER(S)"
* section.section[7].code = $spor-rms#200000029845 "8. MARKETING AUTHORISATION NUMBER(S)"
* section.section[7].text.status = #generated
* section.section[7].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>PA0000/001/001</p></div>"
* section.section[8].id = "smpc-9"
* section.section[8].title = "9. DATE OF FIRST AUTHORISATION/RENEWAL OF THE AUTHORISATION"
* section.section[8].code = $spor-rms#200000029846 "9. DATE OF FIRST AUTHORISATION/RENEWAL OF THE AUTHORISATION"
* section.section[8].text.status = #generated
* section.section[8].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Date of first authorisation: 15 January 2020</p></div>"
* section.section[9].id = "smpc-10"
* section.section[9].title = "10. DATE OF REVISION OF THE TEXT"
* section.section[9].code = $spor-rms#200000029847 "10. DATE OF REVISION OF THE TEXT"
* section.section[9].text.status = #generated
* section.section[9].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>October 2026</p></div>"
