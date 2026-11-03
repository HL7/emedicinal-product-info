// ============================================================================
// WonderDrug - patient-facing documents (ePI Type 1).
// The package leaflets and the instructions for use are separate ePI documents,
// each its own Bundle with one Composition. They sit beside the SmPC Bundles
// for the same products. SYNTHETIC: WonderDrug and WonderPharma are invented.
// ============================================================================

// ============================================================================
// WonderDrug 500 mg tablets - package leaflet (PIL), ePI Type 1
// ============================================================================

Instance: bundle-epi-type1-example-wonderdrug-pil
InstanceOf: BundleUvEpi
Usage: #example
Title: "Bundle - ePI Type 1 WonderDrug 500 mg tablets package leaflet"
Description: "Type 1 (digital label): the package leaflet for WonderDrug 500 mg tablets"
* meta.versionId = "1"
* meta.lastUpdated = "2026-10-15T09:00:00Z"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:588a56ad-9b7e-516a-a4f0-bd8f80b84b98"
* type = #document
* timestamp = "2026-10-15T09:00:00Z"
* entry[composition][0].fullUrl = "urn:uuid:56bdceec-7a3f-56fb-a5b3-ce0d903f6cd5"
* entry[composition][=].resource = composition-wonderdrug-pil

Instance: composition-wonderdrug-pil
InstanceOf: CompositionUvEpi
Usage: #example
Title: "Composition - WonderDrug 500 mg tablets package leaflet (Type 1)"
Description: "Package leaflet for WonderDrug 500 mg tablets, structured with the EMA QRD package leaflet headings"
* meta.versionId = "1"
* meta.lastUpdated = "2026-10-15T09:00:00Z"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e52ce0b4-d607-5de5-9dd5-0cd8f3862f82"
* language = #en
* version = "1.0"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p><b>WonderDrug 500 mg tablets</b></p><p>Package Leaflet</p></div>"
* status = #final
* type = $spor-rms#100000155538 "Package Leaflet"
* subject.display = "WonderDrug 500 mg tablets"
* date = "2026-10-15"
* author.display = "WonderPharma Ltd."
* title = "WonderDrug 500 mg tablets - Package leaflet: information for the user"
* section.id = "pil"
* section.title = "PACKAGE LEAFLET: INFORMATION FOR THE USER"
* section.code = $spor-rms#200000029894 "PACKAGE LEAFLET"
* section.text.status = #generated
* section.text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p><b>WonderDrug 500 mg tablets</b></p><p>paracetamol</p><p><b>Read all of this leaflet carefully before you start taking this medicine because it contains important information for you.</b></p><ul><li>Keep this leaflet. You may need to read it again.</li><li>Ask your pharmacist if you need more information or advice.</li><li>If you get any side effects, talk to your doctor or pharmacist. This includes any possible side effects not listed in this leaflet. See section 4.</li><li>You must talk to a doctor if you do not feel better or if you feel worse after 3 days.</li></ul></div>"
* section.section[0].id = "pil-1"
* section.section[0].title = "1. What WonderDrug is and what it is used for"
* section.section[0].code = $spor-rms#200000029895 "1. What X is and what it is used for"
* section.section[0].text.status = #generated
* section.section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>WonderDrug contains paracetamol, which belongs to a group of medicines called pain relievers (analgesics) and fever reducers (antipyretics).</p><p>It is used to treat mild to moderate pain, such as headache, toothache and period pain, and to reduce fever, in adults and children aged 12 years and over.</p></div>"
* section.section[1].id = "pil-2"
* section.section[1].title = "2. What you need to know before you take WonderDrug"
* section.section[1].code = $spor-rms#200000029896 "2. What you need to know before you <take> <use> X"
* section.section[1].text.status = #generated
* section.section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Read the sections below before you take this medicine.</p></div>"
* section.section[1].section[0].id = "pil-2-1"
* section.section[1].section[0].title = "Do not take WonderDrug"
* section.section[1].section[0].code = $spor-rms#200000029897 "Do not <take> <use> X"
* section.section[1].section[0].text.status = #generated
* section.section[1].section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><ul><li>if you are allergic to paracetamol or any of the other ingredients of this medicine (listed in section 6).</li><li>if you have severe liver problems.</li></ul></div>"
* section.section[1].section[1].id = "pil-2-2"
* section.section[1].section[1].title = "Warnings and precautions"
* section.section[1].section[1].code = $spor-rms#200000029898 "Warnings and precautions"
* section.section[1].section[1].text.status = #generated
* section.section[1].section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Talk to your doctor or pharmacist before taking WonderDrug if you have liver or kidney problems, or if you regularly drink alcohol.</p><p><b>Do not take more than the recommended dose.</b> Taking too much paracetamol can cause serious liver damage.</p><p>Do not take WonderDrug with any other medicine that contains paracetamol.</p></div>"
* section.section[1].section[2].id = "pil-2-3"
* section.section[1].section[2].title = "Children"
* section.section[1].section[2].code = $spor-rms#200000029899 "Children <and adolescents>"
* section.section[1].section[2].text.status = #generated
* section.section[1].section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Do not give this medicine to children under 12 years. A suspension (WonderDrug 250 mg/5 mL powder for oral suspension) is available for children aged 6 to 12 years.</p></div>"
* section.section[1].section[3].id = "pil-2-4"
* section.section[1].section[3].title = "Other medicines and WonderDrug"
* section.section[1].section[3].code = $spor-rms#200000029900 "Other medicines and X"
* section.section[1].section[3].text.status = #generated
* section.section[1].section[3].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Tell your doctor or pharmacist if you are taking, have recently taken or might take any other medicines, in particular warfarin or other medicines to thin the blood.</p></div>"
* section.section[1].section[4].id = "pil-2-5"
* section.section[1].section[4].title = "Pregnancy and breast-feeding"
* section.section[1].section[4].code = $spor-rms#200000029902 "Pregnancy <and> <,> breast-feeding <and fertility>"
* section.section[1].section[4].text.status = #generated
* section.section[1].section[4].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>If you are pregnant or breast-feeding, think you may be pregnant or are planning to have a baby, ask your doctor or pharmacist for advice before taking this medicine. If necessary, WonderDrug can be used during pregnancy and breast-feeding. Use the lowest dose that reduces your pain or fever and use it for the shortest time possible.</p></div>"
* section.section[1].section[5].id = "pil-2-6"
* section.section[1].section[5].title = "Driving and using machines"
* section.section[1].section[5].code = $spor-rms#200000029903 "Driving and using machines"
* section.section[1].section[5].text.status = #generated
* section.section[1].section[5].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>WonderDrug is not expected to affect your ability to drive or use machines.</p></div>"
* section.section[1].section[6].id = "pil-2-7"
* section.section[1].section[6].title = "WonderDrug contains lactose"
* section.section[1].section[6].code = $spor-rms#200000029904 "X contains {name the excipient(s)}"
* section.section[1].section[6].text.status = #generated
* section.section[1].section[6].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>If you have been told by your doctor that you have an intolerance to some sugars, contact your doctor before taking this medicine.</p></div>"
* section.section[2].id = "pil-3"
* section.section[2].title = "3. How to take WonderDrug"
* section.section[2].code = $spor-rms#200000029905 "3. How to <take> <use> X"
* section.section[2].text.status = #generated
* section.section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Always take this medicine exactly as described in this leaflet or as your doctor or pharmacist has told you. Check with your doctor or pharmacist if you are not sure.</p><table><tr><th>Age</th><th>Dose</th><th>Maximum in 24 hours</th></tr><tr><td>Adults and adolescents aged 16 years and over (50 kg or more)</td><td>1 or 2 tablets</td><td>8 tablets</td></tr><tr><td>Adolescents aged 12 to 15 years (40 to 49 kg)</td><td>1 tablet</td><td>4 tablets</td></tr></table><p>Leave at least 4 hours between doses. Swallow the tablets whole with a glass of water.</p></div>"
* section.section[2].section[0].id = "pil-3-1"
* section.section[2].section[0].title = "If you take more WonderDrug than you should"
* section.section[2].section[0].code = $spor-rms#200000029907 "If you <take> <use> more X than you should"
* section.section[2].section[0].text.status = #generated
* section.section[2].section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p><b>Talk to a doctor at once if you take too much of this medicine, even if you feel well.</b> Too much paracetamol can cause delayed, serious liver damage.</p></div>"
* section.section[2].section[1].id = "pil-3-2"
* section.section[2].section[1].title = "If you forget to take WonderDrug"
* section.section[2].section[1].code = $spor-rms#200000029908 "If you forget to <take> <use> X"
* section.section[2].section[1].text.status = #generated
* section.section[2].section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Do not take a double dose to make up for a forgotten dose. Take the next dose when needed, leaving at least 4 hours since the last dose.</p></div>"
* section.section[3].id = "pil-4"
* section.section[3].title = "4. Possible side effects"
* section.section[3].code = $spor-rms#200000029910 "4. Possible side effects"
* section.section[3].text.status = #generated
* section.section[3].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Like all medicines, this medicine can cause side effects, although not everybody gets them.</p><p><b>Rare</b> (may affect up to 1 in 1,000 people): skin rash. Stop taking WonderDrug and tell your doctor straight away if you get a rash.</p></div>"
* section.section[3].section[0].id = "pil-4-1"
* section.section[3].section[0].title = "Reporting of side effects"
* section.section[3].section[0].code = $spor-rms#200000029912 "Reporting of side effects"
* section.section[3].section[0].text.status = #generated
* section.section[3].section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>If you get any side effects, talk to your doctor or pharmacist. You can also report side effects directly via the national reporting system. By reporting side effects you can help provide more information on the safety of this medicine.</p></div>"
* section.section[4].id = "pil-5"
* section.section[4].title = "5. How to store WonderDrug"
* section.section[4].code = $spor-rms#200000029913 "5. How to store X"
* section.section[4].text.status = #generated
* section.section[4].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><ul><li>Keep this medicine out of the sight and reach of children.</li><li>Do not use this medicine after the expiry date which is stated on the carton and blister after EXP.</li><li>Store below 25 °C. Store in the original package to protect from light.</li><li>Do not throw away any medicines via wastewater or household waste. Ask your pharmacist how to throw away medicines you no longer use.</li></ul></div>"
* section.section[5].id = "pil-6"
* section.section[5].title = "6. Contents of the pack and other information"
* section.section[5].code = $spor-rms#200000029914 "6. Contents of the pack and other information"
* section.section[5].text.status = #generated
* section.section[5].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>See the sections below.</p></div>"
* section.section[5].section[0].id = "pil-6-1"
* section.section[5].section[0].title = "What WonderDrug contains"
* section.section[5].section[0].code = $spor-rms#200000029915 "What X contains"
* section.section[5].section[0].text.status = #generated
* section.section[5].section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><ul><li>The active substance is paracetamol. Each tablet contains 500 mg paracetamol.</li><li>The other ingredients are maize starch, lactose monohydrate and magnesium stearate.</li></ul></div>"
* section.section[5].section[1].id = "pil-6-2"
* section.section[5].section[1].title = "What WonderDrug looks like and contents of the pack"
* section.section[5].section[1].code = $spor-rms#200000029916 "What X looks like and contents of the pack"
* section.section[5].section[1].text.status = #generated
* section.section[5].section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>White, round, flat tablets, scored on one side and marked WD500 on the other. Packs of 20 tablets (2 blisters of 10 tablets).</p></div>"
* section.section[5].section[2].id = "pil-6-3"
* section.section[5].section[2].title = "Marketing authorization holder and manufacturer"
* section.section[5].section[2].code = $spor-rms#200000029917 "Marketing Authorization Holder and Manufacturer"
* section.section[5].section[2].text.status = #generated
* section.section[5].section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>WonderPharma Ltd., 1 Example Street, Dublin 2, D02 X123, Ireland</p></div>"
* section.section[5].section[3].id = "pil-6-4"
* section.section[5].section[3].title = "This leaflet was last revised in October 2026"
* section.section[5].section[3].code = $spor-rms#200000029919 "This leaflet was last revised in <{MM/YYYY}><{month YYYY}>."
* section.section[5].section[3].text.status = #generated
* section.section[5].section[3].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>This leaflet was last revised in October 2026.</p></div>"


// ============================================================================
// WonderDrug 250 mg/5 mL powder for oral suspension - package leaflet (PIL), ePI Type 1
// ============================================================================

Instance: bundle-epi-type1-example-wonderdrug-suspension-pil
InstanceOf: BundleUvEpi
Usage: #example
Title: "Bundle - ePI Type 1 WonderDrug 250 mg/5 mL suspension package leaflet"
Description: "Type 1 (digital label): the package leaflet for WonderDrug 250 mg/5 mL powder for oral suspension"
* meta.versionId = "1"
* meta.lastUpdated = "2026-10-15T09:00:00Z"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a66a1a56-80ec-5c31-9ce0-b8b38052bacb"
* type = #document
* timestamp = "2026-10-15T09:00:00Z"
* entry[composition][0].fullUrl = "urn:uuid:86f4c4fa-ba7a-5e53-861a-4947840bf5e0"
* entry[composition][=].resource = composition-wonderdrug-suspension-pil

Instance: composition-wonderdrug-suspension-pil
InstanceOf: CompositionUvEpi
Usage: #example
Title: "Composition - WonderDrug 250 mg/5 mL suspension package leaflet (Type 1)"
Description: "Package leaflet for WonderDrug 250 mg/5 mL powder for oral suspension, written for caregivers"
* meta.versionId = "1"
* meta.lastUpdated = "2026-10-15T09:00:00Z"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:f3619444-3f1b-52ec-ab5f-f1abdd99bce0"
* language = #en
* version = "1.0"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p><b>WonderDrug 250 mg/5 mL powder for oral suspension</b></p><p>Package Leaflet</p></div>"
* status = #final
* type = $spor-rms#100000155538 "Package Leaflet"
* subject.display = "WonderDrug 250 mg/5 mL powder for oral suspension"
* date = "2026-10-15"
* author.display = "WonderPharma Ltd."
* title = "WonderDrug 250 mg/5 mL powder for oral suspension - Package leaflet: information for the patient or caregiver"
* section.id = "pil"
* section.title = "PACKAGE LEAFLET: INFORMATION FOR THE PATIENT OR CAREGIVER"
* section.code = $spor-rms#200000029894 "PACKAGE LEAFLET"
* section.text.status = #generated
* section.text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p><b>WonderDrug 250 mg/5 mL powder for oral suspension</b></p><p>paracetamol</p><p><b>Read all of this leaflet carefully before you give this medicine to your child because it contains important information.</b></p><ul><li>Keep this leaflet. You may need to read it again.</li><li>Ask your pharmacist if you need more information or advice.</li><li>If your child gets any side effects, talk to your doctor or pharmacist. See section 4.</li><li>You must talk to a doctor if your child does not feel better or feels worse after 3 days.</li></ul></div>"
* section.section[0].id = "pil-1"
* section.section[0].title = "1. What WonderDrug suspension is and what it is used for"
* section.section[0].code = $spor-rms#200000029895 "1. What X is and what it is used for"
* section.section[0].text.status = #generated
* section.section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>WonderDrug suspension contains paracetamol, a pain reliever and fever reducer. It is used to treat mild to moderate pain and fever in children aged 6 to 12 years.</p></div>"
* section.section[1].id = "pil-2"
* section.section[1].title = "2. What you need to know before you give WonderDrug suspension"
* section.section[1].code = $spor-rms#200000029896 "2. What you need to know before you <take> <use> X"
* section.section[1].text.status = #generated
* section.section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Read the sections below before you give this medicine.</p></div>"
* section.section[1].section[0].id = "pil-2-1"
* section.section[1].section[0].title = "Do not give WonderDrug suspension"
* section.section[1].section[0].code = $spor-rms#200000029897 "Do not <take> <use> X"
* section.section[1].section[0].text.status = #generated
* section.section[1].section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><ul><li>if your child is allergic to paracetamol or any of the other ingredients of this medicine (listed in section 6).</li><li>if your child has severe liver problems.</li></ul></div>"
* section.section[1].section[1].id = "pil-2-2"
* section.section[1].section[1].title = "Warnings and precautions"
* section.section[1].section[1].code = $spor-rms#200000029898 "Warnings and precautions"
* section.section[1].section[1].text.status = #generated
* section.section[1].section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p><b>Do not give more than the recommended dose.</b> Do not give this medicine with any other medicine that contains paracetamol.</p></div>"
* section.section[1].section[2].id = "pil-2-3"
* section.section[1].section[2].title = "WonderDrug suspension contains sucrose and sodium benzoate"
* section.section[1].section[2].code = $spor-rms#200000029904 "X contains {name the excipient(s)}"
* section.section[1].section[2].text.status = #generated
* section.section[1].section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Each 5 mL contains 2.5 g sucrose. This should be taken into account in patients with diabetes mellitus. May be harmful to the teeth. If your doctor has told you that your child has an intolerance to some sugars, contact your doctor before giving this medicine.</p><p>This medicine contains 5 mg sodium benzoate (E211) in each 5 mL.</p></div>"
* section.section[2].id = "pil-3"
* section.section[2].title = "3. How to give WonderDrug suspension"
* section.section[2].code = $spor-rms#200000029905 "3. How to <take> <use> X"
* section.section[2].text.status = #generated
* section.section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Shake the bottle well before each use. Use the oral syringe in the pack to measure the dose. See the Instructions for use for how to prepare the suspension and use the syringe.</p><table><tr><th>Age</th><th>Dose</th></tr><tr><td>6 to 7 years</td><td>5 mL</td></tr><tr><td>8 to 9 years</td><td>7.5 mL</td></tr><tr><td>10 to 12 years</td><td>10 mL</td></tr></table><p>Give the dose every 4 to 6 hours as needed. Do not give more than 4 doses in 24 hours.</p></div>"
* section.section[2].section[0].id = "pil-3-1"
* section.section[2].section[0].title = "If you give more WonderDrug suspension than you should"
* section.section[2].section[0].code = $spor-rms#200000029907 "If you <take> <use> more X than you should"
* section.section[2].section[0].text.status = #generated
* section.section[2].section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p><b>Talk to a doctor at once if your child takes too much of this medicine, even if your child seems well.</b></p></div>"
* section.section[3].id = "pil-4"
* section.section[3].title = "4. Possible side effects"
* section.section[3].code = $spor-rms#200000029910 "4. Possible side effects"
* section.section[3].text.status = #generated
* section.section[3].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Like all medicines, this medicine can cause side effects, although not everybody gets them. <b>Rare</b> (may affect up to 1 in 1,000 people): skin rash.</p></div>"
* section.section[4].id = "pil-5"
* section.section[4].title = "5. How to store WonderDrug suspension"
* section.section[4].code = $spor-rms#200000029913 "5. How to store X"
* section.section[4].text.status = #generated
* section.section[4].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><ul><li>Keep this medicine out of the sight and reach of children.</li><li>Before mixing: store below 25 °C.</li><li>After mixing: store in a refrigerator (2 °C to 8 °C) and use within 14 days.</li></ul></div>"
* section.section[5].id = "pil-6"
* section.section[5].title = "6. Contents of the pack and other information"
* section.section[5].code = $spor-rms#200000029914 "6. Contents of the pack and other information"
* section.section[5].text.status = #generated
* section.section[5].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Each 5 mL of mixed suspension contains 250 mg paracetamol. The other ingredients are sucrose, xanthan gum, sodium benzoate (E211) and orange flavour. Each carton contains a bottle of powder to make 100 mL of suspension and a 5 mL oral syringe.</p><p>Marketing authorization holder and manufacturer: WonderPharma Ltd., 1 Example Street, Dublin 2, D02 X123, Ireland.</p></div>"


// ============================================================================
// WonderDrug 250 mg/5 mL powder for oral suspension - instructions for use (IFU), ePI Type 1
// Shows step-by-step device instructions with an embedded picture.
// ============================================================================

Instance: bundle-epi-type1-example-wonderdrug-suspension-ifu
InstanceOf: BundleUvEpi
Usage: #example
Title: "Bundle - ePI Type 1 WonderDrug 250 mg/5 mL suspension instructions for use"
Description: "Type 1 (digital label): instructions for use for preparing WonderDrug suspension and measuring a dose with the oral syringe"
* meta.versionId = "1"
* meta.lastUpdated = "2026-10-15T09:00:00Z"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b3d3d1af-9499-52b6-acaa-8f2a71acac33"
* type = #document
* timestamp = "2026-10-15T09:00:00Z"
* entry[composition][0].fullUrl = "urn:uuid:91a4611e-b4a1-51a5-a69f-768811a17db9"
* entry[composition][=].resource = composition-wonderdrug-suspension-ifu

Instance: composition-wonderdrug-suspension-ifu
InstanceOf: CompositionUvEpi
Usage: #example
Title: "Composition - WonderDrug 250 mg/5 mL suspension instructions for use (Type 1)"
Description: "Instructions for use for WonderDrug 250 mg/5 mL powder for oral suspension and its 5 mL oral syringe, with a step-by-step picture"
* meta.versionId = "1"
* meta.lastUpdated = "2026-10-15T09:00:00Z"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:44315a98-16c4-5e4a-ae1a-fa7619f72264"
* language = #en
* version = "1.0"
* contained[binaryImage] = ifu-steps-image
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p><b>WonderDrug 250 mg/5 mL powder for oral suspension</b></p><p>Instructions for use</p></div>"
* status = #final
* type = EpiDocumentTypeExampleCS#instructions-for-use "Instructions for use"
* subject.display = "WonderDrug 250 mg/5 mL powder for oral suspension"
* date = "2026-10-15"
* author.display = "WonderPharma Ltd."
* title = "WonderDrug 250 mg/5 mL powder for oral suspension - Instructions for use"
* section.id = "ifu"
* section.title = "INSTRUCTIONS FOR USE"
* section.code = $loinc#59845-8 "FDA package insert Instructions for use section"
* section.text.status = #generated
* section.text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p><b>WonderDrug 250 mg/5 mL powder for oral suspension</b></p><p>Read these instructions before you prepare the suspension and each time before you give a dose. Use only the 5 mL oral syringe that comes with this medicine.</p><p><img src='#ifu-steps-image' alt='Four steps: shake the bottle, insert the syringe, draw up the dose, give it slowly'/></p></div>"
* section.section[0].id = "ifu-1"
* section.section[0].title = "What is in the pack"
* section.section[0].text.status = #generated
* section.section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><table><tr><th>Part</th><th>What it is for</th></tr><tr><td>Bottle with powder</td><td>Makes 100 mL of suspension after you add water</td></tr><tr><td>Child-resistant cap</td><td>Push down and turn to open</td></tr><tr><td>Bottle adapter</td><td>Holds the syringe in the bottle</td></tr><tr><td>5 mL oral syringe</td><td>Measures the dose, marked every 0.25 mL</td></tr></table></div>"
* section.section[1].id = "ifu-2"
* section.section[1].title = "Prepare the suspension (pharmacist or caregiver, first use only)"
* section.section[1].text.status = #generated
* section.section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><ol><li>Tap the closed bottle to loosen the powder.</li><li>Add drinking water up to the fill mark on the label (90 mL).</li><li>Close the bottle and shake well for 1 minute.</li><li>Press the bottle adapter into the neck of the bottle.</li><li>Write the date of mixing on the label. Throw away any suspension left after 14 days.</li></ol></div>"
* section.section[2].id = "ifu-3"
* section.section[2].title = "Measure and give a dose"
* section.section[2].text.status = #generated
* section.section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><ol><li><b>Shake</b> the bottle well before each dose.</li><li><b>Insert</b> the tip of the empty syringe into the bottle adapter and turn the bottle upside down.</li><li><b>Draw up</b> the dose: pull the plunger slowly until the top edge of the plunger lines up with the mark for your child's dose (see the table below). If you see air bubbles, push the suspension back and draw up again.</li><li><b>Give</b> the dose: place the syringe tip inside your child's cheek and push the plunger slowly, so your child can swallow.</li></ol><table><tr><th>Age</th><th>Fill the syringe to</th></tr><tr><td>6 to 7 years</td><td>5 mL (1 full syringe)</td></tr><tr><td>8 to 9 years</td><td>7.5 mL (1 full syringe, then 2.5 mL)</td></tr><tr><td>10 to 12 years</td><td>10 mL (2 full syringes)</td></tr></table></div>"
* section.section[3].id = "ifu-4"
* section.section[3].title = "Clean and store"
* section.section[3].text.status = #generated
* section.section[3].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><ul><li>Leave the adapter in the bottle and close the cap after each use.</li><li>Pull the syringe apart, rinse both parts in warm water and let them air dry.</li><li>Store the bottle in a refrigerator (2 °C to 8 °C).</li></ul></div>"
* section.section[4].id = "ifu-5"
* section.section[4].title = "Questions"
* section.section[4].text.status = #generated
* section.section[4].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>If you have questions about how to use the syringe, ask your pharmacist or contact WonderPharma Ltd. at medinfo@wonderpharma.example.com.</p></div>"


Instance: ifu-steps-image
InstanceOf: BinaryEpi
Usage: #inline
* contentType = #image/png
* data = "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"
