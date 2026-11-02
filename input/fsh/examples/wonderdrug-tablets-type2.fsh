// ============================================================================
// WonderDrug 500 mg tablets - ePI Type 2 (product data). Type 1 plus the product resources; SmPC sections link to them with section.entry. The tablet is taken as it is, so the administrable product has the same dose form as the manufactured item.
// ============================================================================

Instance: bundle-epi-type2-example-wonderdrug
InstanceOf: BundleEpiType2
Usage: #example
Title: "Bundle - ePI Type 2 WonderDrug 500 mg tablets"
Description: "Type 2 (product data): Type 1 plus the product, authorization, pack, manufactured item, administrable product and ingredients"
* meta.versionId = "1"
* meta.lastUpdated = "2026-10-15T09:00:00Z"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c1467be4-125c-5998-b93e-5e2beaa53991"
* type = #document
* timestamp = "2026-10-15T09:00:00Z"
* entry[composition][0].fullUrl = "urn:uuid:eeaf19eb-25ff-5c70-8e63-b6ac80a6ccad"
* entry[composition][=].resource = composition-wonderdrug-tablets-type2
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

Instance: composition-wonderdrug-tablets-type2
InstanceOf: CompositionUvEpi
Usage: #example
Title: "Composition - WonderDrug 500 mg tablets (Type 2)"
Description: "SmPC for WonderDrug 500 mg tablets, with sections linked to the product data"
* meta.versionId = "1"
* meta.lastUpdated = "2026-10-15T09:00:00Z"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:faea4b74-2089-5dff-b8d7-5aa36a994b73"
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

Instance: mpd-wonderdrug-tablets
InstanceOf: MedicinalProductDefinitionUvEpi
Usage: #example
Title: "MedicinalProductDefinition - WonderDrug 500 mg tablets"
Description: "The medicinal product WonderDrug 500 mg tablets"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><b>WonderDrug 500 mg tablets</b></p><p>Human medicinal product, not subject to medical prescription. Marketing authorization holder: WonderPharma Ltd.</p></div>"
* identifier.system = $example-prod
* identifier.value = "WONDERDRUG-500-TAB"
* type = $medicinal-product-type#MedicinalProduct "Medicinal Product"
* domain = $medicinal-product-domain#Human "Human use"
* status = $publication-status#active "Active"
* statusDate = "2020-01-15"
* indication = "Symptomatic treatment of mild to moderate pain and fever in adults and children aged 12 years and over."
* legalStatusOfSupply = $legal-status-of-supply#100000072076 "Medicinal product not subject to medical prescription"
* classification = $atc#N02BE01 "paracetamol"
* name.productName = "WonderDrug 500 mg tablets"
* name.part[0].part = "WonderDrug"
* name.part[=].type = $medicinal-product-name-part-type#InventedNamePart "Invented name part"
* name.part[+].part = "500 mg"
* name.part[=].type = $medicinal-product-name-part-type#StrengthPart "Strength part"
* name.part[+].part = "tablets"
* name.part[=].type = $medicinal-product-name-part-type#DoseFormPart "Pharmaceutical dose form part"
* name.usage.country = urn:iso:std:iso:3166#IE "Ireland"
* name.usage.language = urn:ietf:bcp:47#en "English"
* contact.type = $epi-ig#marketing-authorization-holder "Marketing authorization holder"
* contact.contact.reference = "urn:uuid:84262898-0191-564a-b69d-6372457c0f35"

Instance: ra-wonderdrug-tablets
InstanceOf: RegulatedAuthorizationUvEpi
Usage: #example
Title: "RegulatedAuthorization - WonderDrug 500 mg tablets"
Description: "Marketing authorization for WonderDrug 500 mg tablets"
* identifier.system = $example-man
* identifier.value = "PA0000/001/001"
* subject.reference = "urn:uuid:f08dd625-2c3f-5e67-a36a-1d278e6cdbbb"
* type = $regulated-authorization-type#MarketingAuth "Marketing Authorization"
* region = urn:iso:std:iso:3166#IE "Ireland"
* status = $publication-status#active "Active"
* statusDate = "2020-01-15"
* basis = $regulated-authorization-basis#KnownSubstance "Known active substance"
* holder.reference = "urn:uuid:84262898-0191-564a-b69d-6372457c0f35"

Instance: ppd-wonderdrug-tablets
InstanceOf: PackagedProductDefinitionUvEpi
Usage: #example
Title: "PackagedProductDefinition - WonderDrug 500 mg tablets, carton of 20"
Description: "A carton containing 2 PVC/aluminium blisters of 10 tablets"
* identifier.system = "https://www.gs1.org/gtin"
* identifier.value = "05391000000017"
* name = "WonderDrug 500 mg tablets, carton of 20 (2 blisters of 10 tablets)"
* type = $package-type#MedicinalProductPack "Medicinal product pack"
* packageFor.reference = "urn:uuid:f08dd625-2c3f-5e67-a36a-1d278e6cdbbb"
* status = $publication-status#active "Active"
* statusDate = "2020-01-15"
* containedItemQuantity = 20 $unit-of-presentation#200000002152 "Tablet"
* description = "Cardboard carton containing 2 PVC/aluminium blisters, each with 10 tablets."
* legalStatusOfSupply.code = $legal-status-of-supply#100000072076 "Medicinal product not subject to medical prescription"
* legalStatusOfSupply.jurisdiction = urn:iso:std:iso:3166#IE "Ireland"
* manufacturer.reference = "urn:uuid:84262898-0191-564a-b69d-6372457c0f35"
// Outer packaging: the carton
* packaging.type = $packaging-type#100000073498 "Box"
* packaging.quantity = 1
* packaging.shelfLifeStorage.type.text = "Shelf life of the medicinal product as packaged for sale"
* packaging.shelfLifeStorage.periodDuration = 3 'a' "years"
* packaging.shelfLifeStorage.specialPrecautionsForStorage.text = "Store below 25 °C. Store in the original package to protect from light."
// Inner packaging: 2 blisters, each with 10 tablets
* packaging.packaging.type = $packaging-type#100000073496 "Blister"
* packaging.packaging.quantity = 2
* packaging.packaging.material = $package-material#200000003200 "Aluminium"
* packaging.packaging.containedItem.item.reference.reference = "urn:uuid:c3e0d314-e10c-5743-9cf2-d0dc659b25a3"
* packaging.packaging.containedItem.amount = 10 $unit-of-presentation#200000002152 "Tablet"


Instance: mid-wonderdrug-tablets
InstanceOf: ManufacturedItemDefinitionUvEpi
Usage: #example
Title: "ManufacturedItemDefinition - WonderDrug 500 mg tablet"
Description: "The tablet as manufactured. It is taken as it is, so the administrable product has the same dose form."
* identifier.system = $example-id
* identifier.value = "mid-wonderdrug-tablets"
* status = #active
* name = "WonderDrug 500 mg tablet"
* manufacturedDoseForm = $manufactured-dose-form#100000073664 "Tablet"
* unitOfPresentation = $unit-of-presentation#200000002152 "Tablet"
* manufacturer.reference = "urn:uuid:84262898-0191-564a-b69d-6372457c0f35"
* property[shape].type = $epi-ig#shape "Shape"
* property[shape].valueCodeableConcept = $spor-rms#100000073670 "Round"
* property[color].type = $epi-ig#color "Color"
* property[color].valueCodeableConcept = $spor-rms#100000073586 "White"
* property[score].type = $epi-ig#score "Score"
* property[score].valueCodeableConcept = $example-cs#scored "Scored on one side"
* property[imprint].type = $epi-ig#imprint "Imprint"
* property[imprint].valueMarkdown = "WD500"
* property[image].type = $epi-ig#image "Image"
* property[image].valueAttachment.contentType = #image/png
* property[image].valueAttachment.data = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mP8z8BQDwAEhQGAhKmMIQAAAABJRU5ErkJggg=="
* property[image].valueAttachment.title = "WonderDrug 500 mg tablet"


Instance: apd-wonderdrug-tablets
InstanceOf: AdministrableProductDefinitionUvEpi
Usage: #example
Title: "AdministrableProductDefinition - WonderDrug 500 mg tablet"
Description: "The tablet as taken by the patient. No transformation is needed, so the administrable dose form is the same as the manufactured dose form."
* identifier.system = $example-id
* identifier.value = "apd-wonderdrug-tablets"
* status = #active
* formOf.reference = "urn:uuid:f08dd625-2c3f-5e67-a36a-1d278e6cdbbb"
* administrableDoseForm = $administrable-dose-form#100000073664 "Tablet"
* unitOfPresentation = $unit-of-presentation#200000002152 "Tablet"
* producedFrom.reference = "urn:uuid:c3e0d314-e10c-5743-9cf2-d0dc659b25a3"
* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"


Instance: ingredient-wonderdrug-tablets-paracetamol
InstanceOf: IngredientUvEpi
Usage: #example
Title: "Ingredient - Paracetamol (active), WonderDrug tablets"
Description: "Paracetamol (active)"
* identifier.system = $example-id
* identifier.value = "ingredient-wonderdrug-tablets-paracetamol"
* status = #active
* for.reference = "urn:uuid:c3e0d314-e10c-5743-9cf2-d0dc659b25a3"
* role = $ingredient-role#100000072072 "Active"
* substance.code.concept = $ginas#362O9ITL9D "ACETAMINOPHEN"
* substance.strength.presentationRatio.numerator = 500 'mg' "mg"
* substance.strength.presentationRatio.denominator = 1 $unit-of-presentation#200000002152 "Tablet"

Instance: ingredient-wonderdrug-tablets-maize-starch
InstanceOf: IngredientUvEpi
Usage: #example
Title: "Ingredient - Maize starch (excipient)"
Description: "Maize starch (excipient)"
* identifier.system = $example-id
* identifier.value = "ingredient-wonderdrug-tablets-maize-starch"
* status = #active
* for.reference = "urn:uuid:c3e0d314-e10c-5743-9cf2-d0dc659b25a3"
* role = $ingredient-role#100000072082 "Excipient"
* substance.code.concept = $ginas#O8232NY3SJ "STARCH, CORN"

Instance: ingredient-wonderdrug-tablets-lactose
InstanceOf: IngredientUvEpi
Usage: #example
Title: "Ingredient - Lactose monohydrate (excipient with known effect)"
Description: "Lactose monohydrate (excipient with known effect)"
* identifier.system = $example-id
* identifier.value = "ingredient-wonderdrug-tablets-lactose"
* status = #active
* for.reference = "urn:uuid:c3e0d314-e10c-5743-9cf2-d0dc659b25a3"
* role = $ingredient-role#100000072082 "Excipient"
* allergenicIndicator = true
* substance.code.concept = $ginas#EWQ57Q8I5X "LACTOSE MONOHYDRATE"
* substance.strength.presentationRatio.numerator = 25 'mg' "mg"
* substance.strength.presentationRatio.denominator = 1 $unit-of-presentation#200000002152 "Tablet"

Instance: ingredient-wonderdrug-tablets-magnesium-stearate
InstanceOf: IngredientUvEpi
Usage: #example
Title: "Ingredient - Magnesium stearate (excipient)"
Description: "Magnesium stearate (excipient)"
* identifier.system = $example-id
* identifier.value = "ingredient-wonderdrug-tablets-magnesium-stearate"
* status = #active
* for.reference = "urn:uuid:c3e0d314-e10c-5743-9cf2-d0dc659b25a3"
* role = $ingredient-role#100000072082 "Excipient"
* substance.code.concept = $ginas#70097M6I30 "MAGNESIUM STEARATE"
