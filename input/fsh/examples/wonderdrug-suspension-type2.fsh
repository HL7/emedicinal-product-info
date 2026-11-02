// ============================================================================
// WonderDrug 250 mg/5 mL powder for oral suspension - ePI Type 2. Shows a product that is transformed before use: the manufactured item is the powder in its bottle (powder for oral suspension); the administrable product is the oral suspension made by adding water. The pack also contains an oral syringe (DeviceDefinition), and the bottle has two shelf lives (as packaged, and after reconstitution).
// ============================================================================

Instance: bundle-epi-type2-example-wonderdrug-suspension
InstanceOf: BundleEpiType2
Usage: #example
Title: "Bundle - ePI Type 2 WonderDrug 250 mg/5 mL powder for oral suspension"
Description: "Type 2 (product data) for a powder that is reconstituted before use: the manufactured item (powder in a bottle) differs from the administrable product (oral suspension), and the pack includes an oral syringe"
* meta.versionId = "1"
* meta.lastUpdated = "2026-10-15T09:00:00Z"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9c6ee2dc-ce0e-5967-99b5-0cdc892da154"
* type = #document
* timestamp = "2026-10-15T09:00:00Z"
* entry[composition][0].fullUrl = "urn:uuid:3f5172aa-b07f-5fa9-9e5e-e6da61c22d27"
* entry[composition][=].resource = composition-wonderdrug-suspension-type2
* entry[organization][0].fullUrl = "urn:uuid:84262898-0191-564a-b69d-6372457c0f35"
* entry[organization][=].resource = org-wonderpharma
* entry[medicinalProduct][0].fullUrl = "urn:uuid:db686d02-745a-5bae-9e15-9e41eb4f3736"
* entry[medicinalProduct][=].resource = mpd-wonderdrug-suspension
* entry[regulatedAuthorization][0].fullUrl = "urn:uuid:49a0adbb-bf3f-5701-8c80-7158a02eef59"
* entry[regulatedAuthorization][=].resource = ra-wonderdrug-suspension
* entry[packagedProduct][0].fullUrl = "urn:uuid:1f57e0c5-3f72-590d-a829-49fd9d8ee184"
* entry[packagedProduct][=].resource = ppd-wonderdrug-suspension
* entry[deviceDefinition][0].fullUrl = "urn:uuid:51e22f18-14c5-53c9-80ce-9e958a250a0c"
* entry[deviceDefinition][=].resource = devicedefinition-wonderdrug-oral-syringe
* entry[manufacturedItem][0].fullUrl = "urn:uuid:57aaa1a0-a9b4-5277-8142-7bd31c769148"
* entry[manufacturedItem][=].resource = mid-wonderdrug-powder
* entry[administrableProduct][0].fullUrl = "urn:uuid:9d019c3c-3426-52aa-9446-76033cc05bc5"
* entry[administrableProduct][=].resource = apd-wonderdrug-suspension
* entry[ingredient][0].fullUrl = "urn:uuid:742d1fef-607c-5d96-ab79-6e6358462cf4"
* entry[ingredient][=].resource = ingredient-wonderdrug-powder-paracetamol
* entry[ingredient][+].fullUrl = "urn:uuid:0b0a54a6-a21c-5218-a7c7-3fd6424388ea"
* entry[ingredient][=].resource = ingredient-wonderdrug-powder-sucrose
* entry[ingredient][+].fullUrl = "urn:uuid:d28c5bc8-9b8e-5996-a3f2-53d8c7a8c99c"
* entry[ingredient][=].resource = ingredient-wonderdrug-powder-xanthan-gum
* entry[ingredient][+].fullUrl = "urn:uuid:b0ac8fe7-f384-5236-8810-e4f5e5b0bbef"
* entry[ingredient][=].resource = ingredient-wonderdrug-powder-sodium-benzoate
* entry[ingredient][+].fullUrl = "urn:uuid:78c2cebc-ad77-563d-8cf5-979e788c680b"
* entry[ingredient][=].resource = ingredient-wonderdrug-powder-orange-flavour

Instance: composition-wonderdrug-suspension-type2
InstanceOf: CompositionUvEpi
Usage: #example
Title: "Composition - WonderDrug 250 mg/5 mL powder for oral suspension (Type 2)"
Description: "SmPC (shortened) for WonderDrug 250 mg/5 mL powder for oral suspension, with sections linked to the product data"
* meta.versionId = "1"
* meta.lastUpdated = "2026-10-15T09:00:00Z"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:7cebc797-3d95-5a05-be52-c8f0cdba8ac7"
* language = #en
* version = "1.0"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p><b>WonderDrug 250 mg/5 mL powder for oral suspension</b></p><p>Summary of Product Characteristics</p></div>"
* status = #final
* type = $spor-rms#100000155532 "Summary of Product Characteristics"
* subject.reference = "urn:uuid:db686d02-745a-5bae-9e15-9e41eb4f3736"
* date = "2026-10-15"
* author.reference = "urn:uuid:84262898-0191-564a-b69d-6372457c0f35"
* title = "WonderDrug 250 mg/5 mL powder for oral suspension - Summary of Product Characteristics"
* section.id = "smpc"
* section.title = "SUMMARY OF PRODUCT CHARACTERISTICS"
* section.code = $spor-rms#200000029791 "SUMMARY OF PRODUCT CHARACTERISTICS"
* section.text.status = #generated
* section.text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Summary of Product Characteristics: WonderDrug 250 mg/5 mL powder for oral suspension</p></div>"
* section.section[0].id = "smpc-1"
* section.section[0].title = "1. NAME OF THE MEDICINAL PRODUCT"
* section.section[0].code = $spor-rms#200000029792 "1. NAME OF THE MEDICINAL PRODUCT"
* section.section[0].text.status = #generated
* section.section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>WonderDrug 250 mg/5 mL powder for oral suspension</p></div>"
* section.section[0].entry[0].reference = "urn:uuid:db686d02-745a-5bae-9e15-9e41eb4f3736"
* section.section[1].id = "smpc-2"
* section.section[1].title = "2. QUALITATIVE AND QUANTITATIVE COMPOSITION"
* section.section[1].code = $spor-rms#200000029793 "2. QUALITATIVE AND QUANTITATIVE COMPOSITION"
* section.section[1].text.status = #generated
* section.section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Each bottle contains 5 g paracetamol. After reconstitution, each 5 mL of oral suspension contains 250 mg paracetamol.</p><p><b>Excipients with known effect:</b> each 5 mL contains 2.5 g sucrose and 5 mg sodium benzoate (E211).</p><p>For the full list of excipients, see section 6.1.</p></div>"
* section.section[1].entry[0].reference = "urn:uuid:742d1fef-607c-5d96-ab79-6e6358462cf4"
* section.section[1].entry[1].reference = "urn:uuid:0b0a54a6-a21c-5218-a7c7-3fd6424388ea"
* section.section[1].entry[2].reference = "urn:uuid:d28c5bc8-9b8e-5996-a3f2-53d8c7a8c99c"
* section.section[1].entry[3].reference = "urn:uuid:b0ac8fe7-f384-5236-8810-e4f5e5b0bbef"
* section.section[1].entry[4].reference = "urn:uuid:78c2cebc-ad77-563d-8cf5-979e788c680b"
* section.section[2].id = "smpc-3"
* section.section[2].title = "3. PHARMACEUTICAL FORM"
* section.section[2].code = $spor-rms#200000029797 "3. PHARMACEUTICAL FORM"
* section.section[2].text.status = #generated
* section.section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Powder for oral suspension. White to off-white powder.</p><p>After reconstitution: a white, orange-flavoured oral suspension.</p></div>"
* section.section[2].entry[0].reference = "urn:uuid:57aaa1a0-a9b4-5277-8142-7bd31c769148"
* section.section[2].entry[1].reference = "urn:uuid:9d019c3c-3426-52aa-9446-76033cc05bc5"
* section.section[3].id = "smpc-4"
* section.section[3].title = "4. CLINICAL PARTICULARS"
* section.section[3].code = $spor-rms#200000029798 "4. CLINICAL PARTICULARS"
* section.section[3].text.status = #generated
* section.section[3].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>See sections 4.1 and 4.2.</p></div>"
* section.section[3].section[0].id = "smpc-4-1"
* section.section[3].section[0].title = "4.1 Therapeutic indications"
* section.section[3].section[0].code = $spor-rms#200000029799 "4.1 Therapeutic indications"
* section.section[3].section[0].text.status = #generated
* section.section[3].section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>WonderDrug is indicated for the symptomatic treatment of mild to moderate pain and fever in children aged 6 to 12 years.</p></div>"
* section.section[3].section[1].id = "smpc-4-2"
* section.section[3].section[1].title = "4.2 Posology and method of administration"
* section.section[3].section[1].code = $spor-rms#200000029800 "4.2 Posology and method of administration"
* section.section[3].section[1].text.status = #generated
* section.section[3].section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><table><tr><th>Age</th><th>Dose of reconstituted suspension</th></tr><tr><td>6 to 7 years</td><td>5 mL (250 mg)</td></tr><tr><td>8 to 9 years</td><td>7.5 mL (375 mg)</td></tr><tr><td>10 to 12 years</td><td>10 mL (500 mg)</td></tr></table><p>Give the dose every 4 to 6 hours as needed. Do not give more than 4 doses in 24 hours. Use the oral syringe provided to measure the dose.</p></div>"
* section.section[4].id = "smpc-6"
* section.section[4].title = "6. PHARMACEUTICAL PARTICULARS"
* section.section[4].code = $spor-rms#200000029836 "6. PHARMACEUTICAL PARTICULARS"
* section.section[4].text.status = #generated
* section.section[4].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>See sections 6.1 to 6.6.</p></div>"
* section.section[4].section[0].id = "smpc-6-1"
* section.section[4].section[0].title = "6.1 List of excipients"
* section.section[4].section[0].code = $spor-rms#200000029837 "6.1 List of excipients"
* section.section[4].section[0].text.status = #generated
* section.section[4].section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Sucrose, xanthan gum, sodium benzoate (E211), orange flavour.</p></div>"
* section.section[4].section[0].entry[0].reference = "urn:uuid:0b0a54a6-a21c-5218-a7c7-3fd6424388ea"
* section.section[4].section[0].entry[1].reference = "urn:uuid:d28c5bc8-9b8e-5996-a3f2-53d8c7a8c99c"
* section.section[4].section[0].entry[2].reference = "urn:uuid:b0ac8fe7-f384-5236-8810-e4f5e5b0bbef"
* section.section[4].section[0].entry[3].reference = "urn:uuid:78c2cebc-ad77-563d-8cf5-979e788c680b"
* section.section[4].section[1].id = "smpc-6-3"
* section.section[4].section[1].title = "6.3 Shelf life"
* section.section[4].section[1].code = $spor-rms#200000029839 "6.3 Shelf life"
* section.section[4].section[1].text.status = #generated
* section.section[4].section[1].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Unopened: 3 years.</p><p>After reconstitution: 14 days.</p></div>"
* section.section[4].section[2].id = "smpc-6-4"
* section.section[4].section[2].title = "6.4 Special precautions for storage"
* section.section[4].section[2].code = $spor-rms#200000029840 "6.4 Special precautions for storage"
* section.section[4].section[2].text.status = #generated
* section.section[4].section[2].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Store below 25 °C. After reconstitution, store in a refrigerator (2 °C to 8 °C).</p></div>"
* section.section[4].section[3].id = "smpc-6-5"
* section.section[4].section[3].title = "6.5 Nature and contents of container"
* section.section[4].section[3].code = $spor-rms#200000029841 "6.5 Nature and contents of container"
* section.section[4].section[3].text.status = #generated
* section.section[4].section[3].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>High-density polyethylene bottle with a child-resistant polypropylene cap, containing powder to make 100 mL of oral suspension. Each carton also contains a 5 mL oral syringe graduated in 0.25 mL steps.</p></div>"
* section.section[4].section[3].entry[0].reference = "urn:uuid:1f57e0c5-3f72-590d-a829-49fd9d8ee184"
* section.section[4].section[4].id = "smpc-6-6"
* section.section[4].section[4].title = "6.6 Special precautions for disposal and other handling"
* section.section[4].section[4].code = $spor-rms#200000029842 "6.6 Special precautions for disposal and other handling"
* section.section[4].section[4].text.status = #generated
* section.section[4].section[4].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p><b>Instructions for reconstitution:</b> tap the bottle to loosen the powder. Add 90 mL of water up to the mark on the bottle label, close the bottle and shake well for 1 minute. This makes 100 mL of oral suspension. Shake the bottle before each use.</p></div>"
* section.section[4].section[4].entry[0].reference = "urn:uuid:9d019c3c-3426-52aa-9446-76033cc05bc5"
* section.section[5].id = "smpc-7"
* section.section[5].title = "7. MARKETING AUTHORISATION HOLDER"
* section.section[5].code = $spor-rms#200000029844 "7. MARKETING AUTHORISATION HOLDER"
* section.section[5].text.status = #generated
* section.section[5].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>WonderPharma Ltd., 1 Example Street, Dublin 2, D02 X123, Ireland</p></div>"
* section.section[5].entry[0].reference = "urn:uuid:84262898-0191-564a-b69d-6372457c0f35"
* section.section[6].id = "smpc-8"
* section.section[6].title = "8. MARKETING AUTHORISATION NUMBER(S)"
* section.section[6].code = $spor-rms#200000029845 "8. MARKETING AUTHORISATION NUMBER(S)"
* section.section[6].text.status = #generated
* section.section[6].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>PA0000/001/002</p></div>"
* section.section[6].entry[0].reference = "urn:uuid:49a0adbb-bf3f-5701-8c80-7158a02eef59"

Instance: mpd-wonderdrug-suspension
InstanceOf: MedicinalProductDefinitionUvEpi
Usage: #example
Title: "MedicinalProductDefinition - WonderDrug 250 mg/5 mL powder for oral suspension"
Description: "The medicinal product WonderDrug 250 mg/5 mL powder for oral suspension"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p><b>WonderDrug 250 mg/5 mL powder for oral suspension</b></p><p>Human medicinal product, not subject to medical prescription. Marketing authorization holder: WonderPharma Ltd.</p></div>"
* identifier.system = $example-prod
* identifier.value = "WONDERDRUG-250-5ML-POS"
* type = $medicinal-product-type#MedicinalProduct "Medicinal Product"
* domain = $medicinal-product-domain#Human "Human use"
* status = $publication-status#active "Active"
* statusDate = "2020-01-15"
* indication = "Symptomatic treatment of mild to moderate pain and fever in children aged 6 to 12 years."
* legalStatusOfSupply = $legal-status-of-supply#100000072076 "Medicinal product not subject to medical prescription"
* classification = $atc#N02BE01 "paracetamol"
* name.productName = "WonderDrug 250 mg/5 mL powder for oral suspension"
* name.part[0].part = "WonderDrug"
* name.part[=].type = $medicinal-product-name-part-type#InventedNamePart "Invented name part"
* name.part[+].part = "250 mg/5 mL"
* name.part[=].type = $medicinal-product-name-part-type#StrengthPart "Strength part"
* name.part[+].part = "powder for oral suspension"
* name.part[=].type = $medicinal-product-name-part-type#DoseFormPart "Pharmaceutical dose form part"
* name.usage.country = urn:iso:std:iso:3166#IE "Ireland"
* name.usage.language = urn:ietf:bcp:47#en "English"
* contact.type = $epi-ig#marketing-authorization-holder "Marketing authorization holder"
* contact.contact.reference = "urn:uuid:84262898-0191-564a-b69d-6372457c0f35"

Instance: ra-wonderdrug-suspension
InstanceOf: RegulatedAuthorizationUvEpi
Usage: #example
Title: "RegulatedAuthorization - WonderDrug 250 mg/5 mL powder for oral suspension"
Description: "Marketing authorization for WonderDrug 250 mg/5 mL powder for oral suspension"
* identifier.system = $example-man
* identifier.value = "PA0000/001/002"
* subject.reference = "urn:uuid:db686d02-745a-5bae-9e15-9e41eb4f3736"
* type = $regulated-authorization-type#MarketingAuth "Marketing Authorization"
* region = urn:iso:std:iso:3166#IE "Ireland"
* status = $publication-status#active "Active"
* statusDate = "2020-01-15"
* basis = $regulated-authorization-basis#KnownSubstance "Known active substance"
* holder.reference = "urn:uuid:84262898-0191-564a-b69d-6372457c0f35"

Instance: ppd-wonderdrug-suspension
InstanceOf: PackagedProductDefinitionUvEpi
Usage: #example
Title: "PackagedProductDefinition - WonderDrug 250 mg/5 mL powder for oral suspension, 1 bottle with oral syringe"
Description: "A carton containing 1 bottle of powder (to make 100 mL of suspension) and a 5 mL oral syringe"
* identifier.system = "https://www.gs1.org/gtin"
* identifier.value = "05391000000024"
* name = "WonderDrug 250 mg/5 mL powder for oral suspension, 1 bottle (100 mL after reconstitution) with 5 mL oral syringe"
* type = $package-type#MedicinalProductPack "Medicinal product pack"
* packageFor.reference = "urn:uuid:db686d02-745a-5bae-9e15-9e41eb4f3736"
* status = $publication-status#active "Active"
* statusDate = "2020-01-15"
* containedItemQuantity = 1 $unit-of-presentation#200000002111 "Bottle"
* description = "Cardboard carton containing 1 bottle of powder for oral suspension and 1 oral syringe."
* legalStatusOfSupply.code = $legal-status-of-supply#100000072076 "Medicinal product not subject to medical prescription"
* legalStatusOfSupply.jurisdiction = urn:iso:std:iso:3166#IE "Ireland"
// Outer packaging: the carton, which also holds the oral syringe
* packaging.type = $packaging-type#100000073498 "Box"
* packaging.quantity = 1
* packaging.containedItem.item.reference.reference = "urn:uuid:51e22f18-14c5-53c9-80ce-9e958a250a0c"
* packaging.containedItem.amount = 1 $unit-of-presentation#200000002150 "Syringe"
// Inner packaging: the bottle of powder, with two shelf lives
* packaging.packaging.type = $packaging-type#100000073497 "Bottle"
* packaging.packaging.quantity = 1
* packaging.packaging.material = $package-material#200000003215 "High Density PolyEthylene"
* packaging.packaging.shelfLifeStorage[0].type.text = "Shelf life of the medicinal product as packaged for sale"
* packaging.packaging.shelfLifeStorage[=].periodDuration = 3 'a' "years"
* packaging.packaging.shelfLifeStorage[=].specialPrecautionsForStorage.text = "Store below 25 °C"
* packaging.packaging.shelfLifeStorage[+].type.text = "Shelf life after reconstitution"
* packaging.packaging.shelfLifeStorage[=].periodDuration = 14 'd' "days"
* packaging.packaging.shelfLifeStorage[=].specialPrecautionsForStorage.text = "Store in a refrigerator (2 °C to 8 °C)"
* packaging.packaging.containedItem.item.reference.reference = "urn:uuid:57aaa1a0-a9b4-5277-8142-7bd31c769148"
* packaging.packaging.containedItem.amount = 1 $unit-of-presentation#200000002111 "Bottle"


Instance: devicedefinition-wonderdrug-oral-syringe
InstanceOf: DeviceDefinitionUvEpi
Usage: #example
Title: "DeviceDefinition - 5 mL oral syringe"
Description: "The 5 mL oral syringe supplied in the pack to measure the dose"
* description = "5 mL oral syringe graduated in 0.25 mL steps"
* deviceName.name = "Oral syringe 5 mL"
* deviceName.type = #user-friendly-name
* classification.type = $packaging-type#100000073537 "Oral syringe"


Instance: mid-wonderdrug-powder
InstanceOf: ManufacturedItemDefinitionUvEpi
Usage: #example
Title: "ManufacturedItemDefinition - WonderDrug powder for oral suspension"
Description: "The powder as manufactured, in its bottle, before reconstitution"
* identifier.system = $example-id
* identifier.value = "mid-wonderdrug-powder"
* status = #active
* name = "WonderDrug 250 mg/5 mL powder for oral suspension (bottle of powder)"
* manufacturedDoseForm = $manufactured-dose-form#100000073649 "Powder for oral suspension"
* unitOfPresentation = $unit-of-presentation#200000002111 "Bottle"
* manufacturer.reference = "urn:uuid:84262898-0191-564a-b69d-6372457c0f35"
* property[color].type = $epi-ig#color "Color"
* property[color].valueCodeableConcept = $spor-rms#100000073586 "White"


Instance: apd-wonderdrug-suspension
InstanceOf: AdministrableProductDefinitionUvEpi
Usage: #example
Title: "AdministrableProductDefinition - WonderDrug 250 mg/5 mL oral suspension"
Description: "The oral suspension that is given to the patient, made by adding water to the powder"
* identifier.system = $example-id
* identifier.value = "apd-wonderdrug-suspension"
* status = #active
* formOf.reference = "urn:uuid:db686d02-745a-5bae-9e15-9e41eb4f3736"
* administrableDoseForm = $administrable-dose-form#100000073362 "Oral suspension"
* producedFrom.reference = "urn:uuid:57aaa1a0-a9b4-5277-8142-7bd31c769148"
* description = "Add 90 mL of water to the powder in the bottle and shake well for 1 minute to make 100 mL of oral suspension. Each 5 mL contains 250 mg paracetamol."
* property[color].type = $epi-ig#color "Color"
* property[color].valueCodeableConcept = $spor-rms#100000073586 "White"
* property[flavor].type = $epi-ig#flavor "Flavor"
* property[flavor].valueCodeableConcept = $example-cs#orange "Orange"
* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"


Instance: ingredient-wonderdrug-powder-paracetamol
InstanceOf: IngredientUvEpi
Usage: #example
Title: "Ingredient - Paracetamol (active), WonderDrug powder for oral suspension"
Description: "Paracetamol (active)"
* identifier.system = $example-id
* identifier.value = "ingredient-wonderdrug-powder-paracetamol"
* status = #active
* for.reference = "urn:uuid:57aaa1a0-a9b4-5277-8142-7bd31c769148"
* role = $ingredient-role#100000072072 "Active"
* substance.code.concept = $ginas#362O9ITL9D "ACETAMINOPHEN"
* substance.code.concept.text = "Paracetamol"
* substance.strength.presentationRatio.numerator = 5 'g' "g"
* substance.strength.presentationRatio.denominator = 1 $unit-of-presentation#200000002111 "Bottle"
* substance.strength.concentrationRatio.numerator = 250 'mg' "mg"
* substance.strength.concentrationRatio.denominator = 5 'mL' "mL"
* substance.strength.textConcentration = "250 mg per 5 mL of oral suspension, after reconstitution"

Instance: ingredient-wonderdrug-powder-sucrose
InstanceOf: IngredientUvEpi
Usage: #example
Title: "Ingredient - Sucrose (excipient with known effect)"
Description: "Sucrose (excipient with known effect)"
* identifier.system = $example-id
* identifier.value = "ingredient-wonderdrug-powder-sucrose"
* status = #active
* for.reference = "urn:uuid:57aaa1a0-a9b4-5277-8142-7bd31c769148"
* role = $ingredient-role#100000072082 "Excipient"
* substance.code.concept = $ginas#C151H8M554 "SUCROSE"
* substance.code.concept.text = "Sucrose"
* substance.strength.concentrationRatio.numerator = 2.5 'g' "g"
* substance.strength.concentrationRatio.denominator = 5 'mL' "mL"
* substance.strength.textConcentration = "2.5 g per 5 mL of oral suspension, after reconstitution"

Instance: ingredient-wonderdrug-powder-xanthan-gum
InstanceOf: IngredientUvEpi
Usage: #example
Title: "Ingredient - Xanthan gum (excipient)"
Description: "Xanthan gum (excipient)"
* identifier.system = $example-id
* identifier.value = "ingredient-wonderdrug-powder-xanthan-gum"
* status = #active
* for.reference = "urn:uuid:57aaa1a0-a9b4-5277-8142-7bd31c769148"
* role = $ingredient-role#100000072082 "Excipient"
* substance.code.concept = $ginas#TTV12P4NEE "XANTHAN GUM"
* substance.code.concept.text = "Xanthan gum"

Instance: ingredient-wonderdrug-powder-sodium-benzoate
InstanceOf: IngredientUvEpi
Usage: #example
Title: "Ingredient - Sodium benzoate (excipient with known effect)"
Description: "Sodium benzoate (excipient with known effect)"
* identifier.system = $example-id
* identifier.value = "ingredient-wonderdrug-powder-sodium-benzoate"
* status = #active
* for.reference = "urn:uuid:57aaa1a0-a9b4-5277-8142-7bd31c769148"
* role = $ingredient-role#100000072082 "Excipient"
* substance.code.concept = $ginas#OJ245FE5EU "SODIUM BENZOATE"
* substance.code.concept.text = "Sodium benzoate"
* substance.strength.concentrationRatio.numerator = 5 'mg' "mg"
* substance.strength.concentrationRatio.denominator = 5 'mL' "mL"
* substance.strength.textConcentration = "5 mg per 5 mL of oral suspension, after reconstitution"

Instance: ingredient-wonderdrug-powder-orange-flavour
InstanceOf: IngredientUvEpi
Usage: #example
Title: "Ingredient - Orange flavour (excipient)"
Description: "Orange flavour (excipient)"
* identifier.system = $example-id
* identifier.value = "ingredient-wonderdrug-powder-orange-flavour"
* status = #active
* for.reference = "urn:uuid:57aaa1a0-a9b4-5277-8142-7bd31c769148"
* role = $ingredient-role#100000072082 "Excipient"
* substance.code.concept.text = "Orange flavour"
