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
Title: "Composition - WonderDrug 500 mg tablets, Type 2 ePI"
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
* property[image].valueAttachment.data = "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"
* property[image].valueAttachment.title = "WonderDrug 500 mg tablet, front (scored) and back (WD500)"


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
Title: "Ingredient - Paracetamol, WonderDrug tablets (active)"
Description: "Paracetamol (active)"
* identifier.system = $example-id
* identifier.value = "ingredient-wonderdrug-tablets-paracetamol"
* status = #active
* for.reference = "urn:uuid:c3e0d314-e10c-5743-9cf2-d0dc659b25a3"
* role = $ingredient-role#100000072072 "Active"
* substance.code.concept = $ginas#362O9ITL9D "ACETAMINOPHEN"
* substance.code.concept.text = "Paracetamol"
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
* substance.code.concept.text = "Maize starch"

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
* substance.code.concept.text = "Lactose monohydrate"
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
* substance.code.concept.text = "Magnesium stearate"
