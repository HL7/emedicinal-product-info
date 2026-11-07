// ============================================================================
// WonderDrug 500 mg tablets - ePI Type 3 (clinical data). Type 2 plus the clinical resources. Dosing sits on each indication, with one dosing guideline per sub-population.
// ============================================================================

Instance: bundle-epi-type3-example-wonderdrug
InstanceOf: BundleEpiType3
Usage: #example
Title: "Bundle - ePI Type 3 WonderDrug 500 mg tablets"
Description: "Type 3 (clinical data): Type 2 plus indications with structured dosing, a contraindication, an interaction, an undesirable effect, a warning and the populations they apply to"
* meta.versionId = "1"
* meta.lastUpdated = "2026-10-15T09:00:00Z"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:cea00263-354e-5e2b-b52e-3efe1ddbde9f"
* type = #document
* timestamp = "2026-10-15T09:00:00Z"
* entry[composition][0].fullUrl = "urn:uuid:0489d78d-ceed-5ba1-abeb-785222510416"
* entry[composition][=].resource = composition-wonderdrug-tablets-type3
* entry[organization][0].fullUrl = "urn:uuid:84262898-0191-564a-b69d-6372457c0f35"
* entry[organization][=].resource = org-wonderpharma
* entry[medicinalProduct][0].fullUrl = "urn:uuid:f08dd625-2c3f-5e67-a36a-1d278e6cdbbb"
* entry[medicinalProduct][=].resource = mpd-wonderdrug-tablets
* entry[regulatedAuthorization][0].fullUrl = "urn:uuid:2d38c4e2-6781-5f38-925f-862042958212"
* entry[regulatedAuthorization][=].resource = ra-wonderdrug-tablets
* entry[packagedProduct][0].fullUrl = "urn:uuid:94540566-005b-5646-9543-6b08c71d60cf"
* entry[packagedProduct][=].resource = ppd-wonderdrug-tablets
* entry[manufacturedItem][0].fullUrl = "urn:uuid:c3e0d314-e10c-5743-9cf2-d0dc659b25a3"
* entry[manufacturedItem][=].resource = mid-wonderdrug-tablets
* entry[administrableProduct][0].fullUrl = "urn:uuid:7a532134-7fcc-5172-8974-e7a4e15977fd"
* entry[administrableProduct][=].resource = apd-wonderdrug-tablets
* entry[ingredient][0].fullUrl = "urn:uuid:364aaf67-1885-508e-a64f-1d874ef6bb77"
* entry[ingredient][=].resource = ingredient-wonderdrug-tablets-paracetamol
* entry[ingredient][+].fullUrl = "urn:uuid:e3de0a6d-926a-5b7d-832a-b06eed78662f"
* entry[ingredient][=].resource = ingredient-wonderdrug-tablets-maize-starch
* entry[ingredient][+].fullUrl = "urn:uuid:3e506e72-08a7-5ede-b197-f36474926522"
* entry[ingredient][=].resource = ingredient-wonderdrug-tablets-lactose
* entry[ingredient][+].fullUrl = "urn:uuid:bf8b0310-15d4-54d0-bc61-94b0b52ba65c"
* entry[ingredient][=].resource = ingredient-wonderdrug-tablets-magnesium-stearate
* entry[clinicalUseDefinitionIndication][0].fullUrl = "urn:uuid:8c006c6d-45db-5d69-ae86-72b7cca7e1bd"
* entry[clinicalUseDefinitionIndication][=].resource = cud-wonderdrug-indication-pain
* entry[clinicalUseDefinitionIndication][+].fullUrl = "urn:uuid:427c54da-0019-57f5-b131-913f329fb96c"
* entry[clinicalUseDefinitionIndication][=].resource = cud-wonderdrug-indication-fever
* entry[clinicalUseDefinitionContraindication][0].fullUrl = "urn:uuid:c6bce486-e9a8-5d81-89f4-b77a669bbf16"
* entry[clinicalUseDefinitionContraindication][=].resource = cud-wonderdrug-contraindication-hepatic
* entry[clinicalUseDefinitionInteraction][0].fullUrl = "urn:uuid:b1b4b2de-5081-549c-bfd2-731dd1a8ddca"
* entry[clinicalUseDefinitionInteraction][=].resource = cud-wonderdrug-interaction-warfarin
* entry[clinicalUseDefinitionUndesirableEffect][0].fullUrl = "urn:uuid:f138dde5-77b4-5676-8970-98cb7dca0683"
* entry[clinicalUseDefinitionUndesirableEffect][=].resource = cud-wonderdrug-undesirable-effect-rash
* entry[clinicalUseDefinitionWarning][0].fullUrl = "urn:uuid:c9626ae0-0cef-50c8-9686-1d5ef788eb53"
* entry[clinicalUseDefinitionWarning][=].resource = cud-wonderdrug-warning-liver
* entry[group][0].fullUrl = "urn:uuid:48f43f45-092a-5998-8938-9ed89fb0861b"
* entry[group][=].resource = group-wonderdrug-12-years-and-over
* entry[group][+].fullUrl = "urn:uuid:1be058b2-e1bb-5287-be83-bdc33bf0d859"
* entry[group][=].resource = group-wonderdrug-16-years-and-over-50kg
* entry[group][+].fullUrl = "urn:uuid:fb1a2e80-cea7-5ab7-975e-581ec51d409c"
* entry[group][=].resource = group-wonderdrug-12-to-15-years-40-to-49kg

Instance: composition-wonderdrug-tablets-type3
InstanceOf: CompositionUvEpi
Usage: #example
Title: "Composition - WonderDrug 500 mg tablets, Type 3 ePI"
Description: "SmPC for WonderDrug 500 mg tablets, with sections linked to the product and clinical data"
* meta.versionId = "1"
* meta.lastUpdated = "2026-10-15T09:00:00Z"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:54deebc0-7049-5018-83e2-bc5e8cdf9562"
* language = #en
* version = "1.0"
* contained[binaryImage] = tablet-image
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p><b>WonderDrug 500 mg tablets</b></p><p>Summary of Product Characteristics</p></div>"
* status = #final
* type = $spor-rms#100000155532 "Summary of Product Characteristics"
* subject.reference = "urn:uuid:f08dd625-2c3f-5e67-a36a-1d278e6cdbbb"
* date = "2026-10-15"
* author.reference = "urn:uuid:84262898-0191-564a-b69d-6372457c0f35"
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
* section.section[0].entry[0].reference = "urn:uuid:f08dd625-2c3f-5e67-a36a-1d278e6cdbbb"
* section.section[1].id = "smpc-2"
* section.section[1].title = "2. QUALITATIVE AND QUANTITATIVE COMPOSITION"
* section.section[1].code = $spor-rms#200000029793 "2. QUALITATIVE AND QUANTITATIVE COMPOSITION"
* section.section[1].text.status = #generated
* section.section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Each tablet contains 500 mg paracetamol.</p><p><b>Excipient with known effect:</b> each tablet contains 25 mg lactose (as monohydrate).</p><p>For the full list of excipients, see section 6.1.</p></div>"
* section.section[1].entry[0].reference = "urn:uuid:364aaf67-1885-508e-a64f-1d874ef6bb77"
* section.section[1].entry[1].reference = "urn:uuid:e3de0a6d-926a-5b7d-832a-b06eed78662f"
* section.section[1].entry[2].reference = "urn:uuid:3e506e72-08a7-5ede-b197-f36474926522"
* section.section[1].entry[3].reference = "urn:uuid:bf8b0310-15d4-54d0-bc61-94b0b52ba65c"
* section.section[2].id = "smpc-3"
* section.section[2].title = "3. PHARMACEUTICAL FORM"
* section.section[2].code = $spor-rms#200000029797 "3. PHARMACEUTICAL FORM"
* section.section[2].text.status = #generated
* section.section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Tablet.</p><p>White, round, flat tablet, scored on one side and marked WD500 on the other. The score line is only there to help break the tablet if you have difficulty swallowing it whole.</p><p><img src='#tablet-image' alt='WonderDrug 500 mg tablet'/></p></div>"
* section.section[2].entry[0].reference = "urn:uuid:c3e0d314-e10c-5743-9cf2-d0dc659b25a3"
* section.section[2].entry[1].reference = "urn:uuid:7a532134-7fcc-5172-8974-e7a4e15977fd"
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
* section.section[3].section[0].entry[0].reference = "urn:uuid:8c006c6d-45db-5d69-ae86-72b7cca7e1bd"
* section.section[3].section[0].entry[1].reference = "urn:uuid:427c54da-0019-57f5-b131-913f329fb96c"
* section.section[3].section[1].id = "smpc-4-2"
* section.section[3].section[1].title = "4.2 Posology and method of administration"
* section.section[3].section[1].code = $spor-rms#200000029800 "4.2 Posology and method of administration"
* section.section[3].section[1].text.status = #generated
* section.section[3].section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p><b>Adults and adolescents aged 16 years and over, weighing 50 kg or more:</b> 1 or 2 tablets every 4 to 6 hours as needed. Do not take more than 8 tablets in 24 hours.</p><p><b>Adolescents aged 12 to 15 years, weighing 40 to 49 kg:</b> 1 tablet every 4 to 6 hours as needed. Do not take more than 4 tablets in 24 hours.</p><p>Leave at least 4 hours between doses. Not for children under 12 years.</p><p><b>Method of administration:</b> oral use. Swallow the tablets with water.</p></div>"
* section.section[3].section[1].entry[0].reference = "urn:uuid:8c006c6d-45db-5d69-ae86-72b7cca7e1bd"
* section.section[3].section[1].entry[1].reference = "urn:uuid:427c54da-0019-57f5-b131-913f329fb96c"
* section.section[3].section[2].id = "smpc-4-3"
* section.section[3].section[2].title = "4.3 Contraindications"
* section.section[3].section[2].code = $spor-rms#200000029805 "4.3 Contraindications"
* section.section[3].section[2].text.status = #generated
* section.section[3].section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Hypersensitivity to paracetamol or to any of the excipients listed in section 6.1.</p><p>Severe hepatic impairment.</p></div>"
* section.section[3].section[2].entry[0].reference = "urn:uuid:c6bce486-e9a8-5d81-89f4-b77a669bbf16"
* section.section[3].section[3].id = "smpc-4-4"
* section.section[3].section[3].title = "4.4 Special warnings and precautions for use"
* section.section[3].section[3].code = $spor-rms#200000029806 "4.4 Special warnings and precautions for use"
* section.section[3].section[3].text.status = #generated
* section.section[3].section[3].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Do not take with any other medicine that contains paracetamol. Taking more than the recommended dose can cause serious liver damage.</p><p>This medicine contains lactose. Patients with rare hereditary problems of galactose intolerance, total lactase deficiency or glucose-galactose malabsorption should not take this medicine.</p></div>"
* section.section[3].section[3].entry[0].reference = "urn:uuid:c9626ae0-0cef-50c8-9686-1d5ef788eb53"
* section.section[3].section[4].id = "smpc-4-5"
* section.section[3].section[4].title = "4.5 Interaction with other medicinal products and other forms of interaction"
* section.section[3].section[4].code = $spor-rms#200000029809 "4.5 Interaction with other medicinal products and other forms of interaction"
* section.section[3].section[4].text.status = #generated
* section.section[3].section[4].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>The anticoagulant effect of warfarin may be increased by prolonged regular daily use of paracetamol, with an increased risk of bleeding. Occasional doses have no significant effect. Monitor the INR during and after prolonged regular use.</p></div>"
* section.section[3].section[4].entry[0].reference = "urn:uuid:b1b4b2de-5081-549c-bfd2-731dd1a8ddca"
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
* section.section[3].section[7].entry[0].reference = "urn:uuid:f138dde5-77b4-5676-8970-98cb7dca0683"
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
* section.section[5].section[0].entry[0].reference = "urn:uuid:e3de0a6d-926a-5b7d-832a-b06eed78662f"
* section.section[5].section[0].entry[1].reference = "urn:uuid:3e506e72-08a7-5ede-b197-f36474926522"
* section.section[5].section[0].entry[2].reference = "urn:uuid:bf8b0310-15d4-54d0-bc61-94b0b52ba65c"
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
* section.section[5].section[4].entry[0].reference = "urn:uuid:94540566-005b-5646-9543-6b08c71d60cf"
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
* section.section[6].entry[0].reference = "urn:uuid:84262898-0191-564a-b69d-6372457c0f35"
* section.section[7].id = "smpc-8"
* section.section[7].title = "8. MARKETING AUTHORISATION NUMBER(S)"
* section.section[7].code = $spor-rms#200000029845 "8. MARKETING AUTHORISATION NUMBER(S)"
* section.section[7].text.status = #generated
* section.section[7].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>PA0000/001/001</p></div>"
* section.section[7].entry[0].reference = "urn:uuid:2d38c4e2-6781-5f38-925f-862042958212"
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

Instance: cud-wonderdrug-indication-pain
InstanceOf: ClinicalUseDefinitionIndicationUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Indication: pain"
Description: "Symptomatic treatment of mild to moderate pain, with structured dosing for two sub-populations"
* identifier.system = $example-id
* identifier.value = "cud-wonderdrug-indication-pain"
* type = #indication
* category = $epi-ig#indication "Indication"
* subject.reference = "urn:uuid:f08dd625-2c3f-5e67-a36a-1d278e6cdbbb"
* status = $publication-status#active "Active"
* population.reference = "urn:uuid:48f43f45-092a-5998-8938-9ed89fb0861b"
* indication.diseaseSymptomProcedure.concept = $sct#22253000 "Pain"
* indication.diseaseSymptomProcedure.concept.text = "Mild to moderate pain"
* indication.intendedEffect.concept.text = "Symptomatic relief"
* insert WonderDrugTabletsDosing

Instance: cud-wonderdrug-indication-fever
InstanceOf: ClinicalUseDefinitionIndicationUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Indication: fever"
Description: "Symptomatic treatment of mild to moderate fever, with structured dosing for two sub-populations"
* identifier.system = $example-id
* identifier.value = "cud-wonderdrug-indication-fever"
* type = #indication
* category = $epi-ig#indication "Indication"
* subject.reference = "urn:uuid:f08dd625-2c3f-5e67-a36a-1d278e6cdbbb"
* status = $publication-status#active "Active"
* population.reference = "urn:uuid:48f43f45-092a-5998-8938-9ed89fb0861b"
* indication.diseaseSymptomProcedure.concept = $sct#386661006 "Fever"
* indication.diseaseSymptomProcedure.concept.text = "Mild to moderate fever"
* indication.intendedEffect.concept.text = "Symptomatic relief"
* insert WonderDrugTabletsDosing

Instance: cud-wonderdrug-contraindication-hepatic
InstanceOf: ClinicalUseDefinitionContraindicationUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Contraindication: severe hepatic impairment"
Description: "WonderDrug must not be used in patients with severe hepatic impairment"
* identifier.system = $example-id
* identifier.value = "cud-wonderdrug-contraindication-hepatic"
* type = #contraindication
* category = $epi-ig#contraindication "Contraindication"
* subject.reference = "urn:uuid:f08dd625-2c3f-5e67-a36a-1d278e6cdbbb"
* status = $publication-status#active "Active"
* contraindication.diseaseSymptomProcedure.concept.text = "Severe hepatic impairment"

Instance: cud-wonderdrug-interaction-warfarin
InstanceOf: ClinicalUseDefinitionInteractionUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Interaction: warfarin"
Description: "Prolonged regular use of paracetamol may increase the anticoagulant effect of warfarin"
* identifier.system = $example-id
* identifier.value = "cud-wonderdrug-interaction-warfarin"
* type = #interaction
* category = $epi-ig#interaction "Interaction"
* subject.reference = "urn:uuid:f08dd625-2c3f-5e67-a36a-1d278e6cdbbb"
* status = $publication-status#active "Active"
* interaction.interactant.itemCodeableConcept = $sct#372756006 "Warfarin"
* interaction.type = $interaction-type#drug-drug "drug to drug interaction"
* interaction.effect.concept.text = "Increased anticoagulant effect, with an increased risk of bleeding, during prolonged regular use"
* interaction.incidence = $interaction-incidence#Observed "Observed"
* interaction.management.text = "Monitor the INR during and after prolonged regular use of paracetamol"

Instance: cud-wonderdrug-undesirable-effect-rash
InstanceOf: ClinicalUseDefinitionUndesirableEffectUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Undesirable effect: skin rash"
Description: "Skin rash, which is rare (may affect up to 1 in 1,000 people)"
* identifier.system = $example-id
* identifier.value = "cud-wonderdrug-undesirable-effect-rash"
* type = #undesirable-effect
* category = $epi-ig#undesirable-effect "Undesirable effect"
* subject.reference = "urn:uuid:f08dd625-2c3f-5e67-a36a-1d278e6cdbbb"
* status = $publication-status#active "Active"
* undesirableEffect.symptomConditionEffect.concept = $sct#271807003 "Eruption of skin"
* undesirableEffect.symptomConditionEffect.concept.text = "Skin rash"
* undesirableEffect.frequencyOfOccurrence = $undesirable-effect-frequency#Rare "Rare"

Instance: cud-wonderdrug-warning-liver
InstanceOf: ClinicalUseDefinitionWarningUvEpi
Usage: #example
Title: "ClinicalUseDefinition - Warning: liver damage in overdose"
Description: "Do not take with other paracetamol-containing medicines; overdose can cause serious liver damage"
* identifier.system = $example-id
* identifier.value = "cud-wonderdrug-warning-liver"
* type = #warning
* category = $epi-ig#warning "Warning"
* subject.reference = "urn:uuid:f08dd625-2c3f-5e67-a36a-1d278e6cdbbb"
* status = $publication-status#active "Active"
* warning.description = "Do not take with any other medicine that contains paracetamol. Taking more than the recommended dose can cause serious liver damage."

Instance: group-wonderdrug-12-years-and-over
InstanceOf: GroupUvEpi
Usage: #example
Title: "Group - Adults and children aged 12 years and over"
Description: "Population: Adults and children aged 12 years and over"
* type = #person
* membership = #definitional
* name = "Adults and children aged 12 years and over"
* characteristic[age].code = $epi-gct#age "Age"
* characteristic[age].valueRange.low = 12 'a' "years"
* characteristic[age].exclude = false

Instance: group-wonderdrug-16-years-and-over-50kg
InstanceOf: GroupUvEpi
Usage: #example
Title: "Group - Adults and adolescents aged 16 years and over, weighing 50 kg or more"
Description: "Population: Adults and adolescents aged 16 years and over, weighing 50 kg or more"
* type = #person
* membership = #definitional
* name = "Adults and adolescents aged 16 years and over, weighing 50 kg or more"
* characteristic[age].code = $epi-gct#age "Age"
* characteristic[age].valueRange.low = 16 'a' "years"
* characteristic[age].exclude = false
* characteristic[bodyWeight].code = $epi-gct#body-weight "Body weight"
* characteristic[bodyWeight].valueRange.low = 50 'kg' "kg"
* characteristic[bodyWeight].exclude = false

Instance: group-wonderdrug-12-to-15-years-40-to-49kg
InstanceOf: GroupUvEpi
Usage: #example
Title: "Group - Adolescents aged 12 to 15 years, weighing 40 to 49 kg"
Description: "Population: Adolescents aged 12 to 15 years, weighing 40 to 49 kg"
* type = #person
* membership = #definitional
* name = "Adolescents aged 12 to 15 years, weighing 40 to 49 kg"
* characteristic[age].code = $epi-gct#age "Age"
* characteristic[age].valueRange.low = 12 'a' "years"
* characteristic[age].valueRange.high = 15 'a' "years"
* characteristic[age].exclude = false
* characteristic[bodyWeight].code = $epi-gct#body-weight "Body weight"
* characteristic[bodyWeight].valueRange.low = 40 'kg' "kg"
* characteristic[bodyWeight].valueRange.high = 49 'kg' "kg"
* characteristic[bodyWeight].exclude = false

// Structured dosing shared by the pain and fever indications: one dosing
// guideline per sub-population, each pointing to a fully defined Group.
RuleSet: WonderDrugTabletsDosing
* indication.extension[dosingGuideline][0].extension[population].valueReference.reference = "urn:uuid:1be058b2-e1bb-5287-be83-bdc33bf0d859"
* indication.extension[dosingGuideline][0].extension[treatmentIntent].valueCodeableConcept.text = "Relief of symptoms"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[type].valueCodeableConcept.text = "As needed"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.sequence = 1
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.text = "1 or 2 tablets every 4 to 6 hours as needed. Do not take more than 8 tablets in 24 hours."
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.frequency = 1
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.period = 4
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.periodMax = 6
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.periodUnit = #h
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.asNeeded = true
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.route = $spor-rms#100000073619 "Oral use"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.doseAndRate.doseRange.low = 1 $unit-of-presentation#200000002152 "Tablet"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.doseAndRate.doseRange.high = 2 $unit-of-presentation#200000002152 "Tablet"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.maxDosePerPeriod.numerator = 8 $unit-of-presentation#200000002152 "Tablet"
* indication.extension[dosingGuideline][0].extension[dosage][0].extension[instruction][0].valueDosage.maxDosePerPeriod.denominator = 24 'h' "hours"
* indication.extension[dosingGuideline][1].extension[population].valueReference.reference = "urn:uuid:fb1a2e80-cea7-5ab7-975e-581ec51d409c"
* indication.extension[dosingGuideline][1].extension[treatmentIntent].valueCodeableConcept.text = "Relief of symptoms"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[type].valueCodeableConcept.text = "As needed"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.sequence = 1
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.text = "1 tablet every 4 to 6 hours as needed. Do not take more than 4 tablets in 24 hours."
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.frequency = 1
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.period = 4
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.periodMax = 6
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.timing.repeat.periodUnit = #h
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.asNeeded = true
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.route = $spor-rms#100000073619 "Oral use"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.doseAndRate.doseQuantity = 1 $unit-of-presentation#200000002152 "Tablet"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.maxDosePerPeriod.numerator = 4 $unit-of-presentation#200000002152 "Tablet"
* indication.extension[dosingGuideline][1].extension[dosage][0].extension[instruction][0].valueDosage.maxDosePerPeriod.denominator = 24 'h' "hours"
