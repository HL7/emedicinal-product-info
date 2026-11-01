Instance: bundle-epi-type2-example-paracetamol
InstanceOf: BundleEpiType2
Usage: #example
Title: "Bundle - ePI Type 2 Paracetamol Example"
Description: "Bundle - ePI Type 2 Paracetamol Example"
* id = "bundle-epi-type2-example-paracetamol"
* meta.versionId = "1.0"
* meta.lastUpdated = "2023-01-25T12:00:00Z"
* meta.profile = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/bundle-epi-type2"
* type = #document
* timestamp = "2023-01-25T12:00:00Z"
* identifier.system = $ema-id
* identifier.value = "WONDERDRUG-500MG-BUNDLE"
* entry[composition].fullUrl = "urn:uuid:a4e4e6ce-a3ab-5967-93af-a5836fec42a1"
* entry[composition].resource = composition-epi-type2-example-paracetamol
* entry[organization].fullUrl = "urn:uuid:280cf9fd-4ef9-5f40-bc01-d8a8db164270"
* entry[organization].resource = org-epi-type2-example-acme
* entry[medicinalProduct].fullUrl = "urn:uuid:b5404984-1a18-55be-8063-3e2bf21116a7"
* entry[medicinalProduct].resource = mpd-epi-type2-example-paracetamol
* entry[regulatedAuthorization].fullUrl = "urn:uuid:5c5de587-118c-535a-bdaa-f1701bb9b065"
* entry[regulatedAuthorization].resource = ra-epi-type2-example-paracetamol
* entry[packagedProduct].fullUrl = "urn:uuid:5d4979f2-c283-5431-b3f0-8f1ebda56791"
* entry[packagedProduct].resource = ppd-epi-type2-example-paracetamol
* entry[manufacturedItem].fullUrl = "urn:uuid:c658a7a4-f077-5b3b-b4fb-b6098b67092b"
* entry[manufacturedItem].resource = mid-epi-type2-example-paracetamol
* entry[administrableProduct].fullUrl = "urn:uuid:b1362b59-28d2-5b9e-8887-43fbdd66d3af"
* entry[administrableProduct].resource = apd-epi-type2-example-paracetamol
* entry[ingredient][0].fullUrl = "urn:uuid:152bb643-f0a6-53e4-b2e6-3961a062533b"
* entry[ingredient][0].resource = ingredient-epi-type2-example-paracetamol-active
* entry[ingredient][+].fullUrl = "urn:uuid:3ab37397-d11e-5662-9d49-2b2f6a77c4b4"
* entry[ingredient][=].resource = ingredient-epi-type2-example-paracetamol-excipient-1
* entry[ingredient][+].fullUrl = "urn:uuid:e7d3633c-ce6f-552f-b5d8-fb2bc6292b4f"
* entry[ingredient][=].resource = ingredient-epi-type2-example-paracetamol-excipient-2
* entry[ingredient][+].fullUrl = "urn:uuid:4c1ccfeb-4187-5d2a-9c1d-e326f0a21b44"
* entry[ingredient][=].resource = ingredient-epi-type2-example-paracetamol-excipient-3

Instance: composition-epi-type2-example-paracetamol
InstanceOf: CompositionUvEpi
Usage: #example
Title: "Composition - Type 2 Paracetamol"
Description: "Composition for Type 2 Paracetamol"
* id = "composition-epi-type2-example-paracetamol"
* meta.versionId = "1"
* meta.lastUpdated = "2023-01-25T10:00:00Z"
* identifier.system = $example-id
* identifier.value = "composition-epi-type2-example-paracetamol"
* status = #final
* language = #en
* version = "1.0"
* contained[0] = binaryImage-t2
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Package Leaflet: Information for the user - Paracetamol Tablets</p></div>"
* type = $spor-rms#100000155538 "Package Leaflet"
* subject.reference = "urn:uuid:b5404984-1a18-55be-8063-3e2bf21116a7"
* date = "2023-01-25"
* author.reference = "urn:uuid:280cf9fd-4ef9-5f40-bc01-d8a8db164270"
* title = "Package Leaflet: Information for the user - WonderDrug 500 mg tablets"
* section.id = "root-section"
* section.title = "Package Leaflet"
* section.code = $spor-rms#100000155538 "Package Leaflet"
* section.text.status = #generated
* section.text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'>Package Leaflet</div>"
* section.section[0].id = "section-1"
* section.section[0].title = "1. What is in this leaflet"
* section.section[=].code = $spor-rms#100000155538 "1. What is in this leaflet"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><h2>1. What is in this leaflet</h2><p>Read all of this leaflet carefully before you start taking this medicine because it contains important information for you.</p></div>"
* section.entry[0].reference = "urn:uuid:280cf9fd-4ef9-5f40-bc01-d8a8db164270"
* section.entry[+].reference = "urn:uuid:b5404984-1a18-55be-8063-3e2bf21116a7"
// * section.entry[+] matches other resources... keeping it simple for now, can add all 15 if needed for validation

Instance: binaryImage-t2
InstanceOf: BinaryEpi
Usage: #inline
* id = "binaryImage-t2"
* contentType = #image/png
* data = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAQAAAC1HAwCAAAAC0lEQVR42mNkYAAAAAYAAjCB0C8AAAAASUVORK5CYII="

Instance: org-epi-type2-example-acme
InstanceOf: OrganizationUvEpi
Usage: #example
Title: "Organization - Acme Pharma Inc."
Description: "Organization - Acme Pharma Inc."
* id = "org-epi-type2-example-acme"
* identifier.system = $spor-oms
* identifier.value = "LOC-100000000"
* active = true
* type = $spor-rms#220000000034 "Marketing authorisation holder"
* name = "Acme Pharma Inc."
* contact.address.text = "123 Pharma Way, 102 37 Prague 10, Czech Republic"
* contact.address.line = "123 Pharma Way"
* contact.address.city = "Prague"
* contact.address.postalCode = "102 37"
* contact.address.country = "Czech Republic"

Instance: mpd-epi-type2-example-paracetamol
InstanceOf: MedicinalProductDefinitionUvEpi
Usage: #example
Title: "MedicinalProductDefinition - WonderDrug 500 mg tablets Type 2"
Description: "MedicinalProductDefinition for WonderDrug 500 mg tablets (Type 2 Example)"
* id = "mpd-epi-type2-example-paracetamol"
* identifier.system = $ema-id
* identifier.value = "WONDERDRUG-500MG"
* status = $publication-status#active "Active"
* domain = $medicinal-product-domain#Human "Human use"
* legalStatusOfSupply = $spor-rms#100000072084 "Medicinal product subject to medical prescription"
* name.productName = "WonderDrug 500 mg tablets"
* name.part[0].part = "WonderDrug"
* name.part[=].type = $medicinal-product-name-part-type#InventedNamePart "Invented name part"
* name.part[+].part = "500 mg"
* name.part[=].type = $medicinal-product-name-part-type#StrengthPart "Strength part"
* name.part[+].part = "tablets"
* name.part[=].type = http://hl7.org/fhir/medicinal-product-name-part-type#DoseFormPart "Pharmaceutical dose form part"
* name.usage.country = $iso3166#EE "Estonia"
* name.usage.language = urn:ietf:bcp:47#et "Estonian"
* contact.contact.reference = "urn:uuid:280cf9fd-4ef9-5f40-bc01-d8a8db164270"

Instance: ra-epi-type2-example-paracetamol
InstanceOf: RegulatedAuthorizationUvEpi
Usage: #example
Title: "RegulatedAuthorization - WonderDrug 500 mg"
Description: "RegulatedAuthorization - WonderDrug 500 mg"
* id = "ra-epi-type2-example-paracetamol"
* identifier.system = $ema-id
* identifier.value = "MA-123456789"
* status = $publication-status#active "Active"
* subject.reference = "urn:uuid:b5404984-1a18-55be-8063-3e2bf21116a7"
* type = $spor-rms#220000000061 "Marketing Authorisation"
* region = $iso3166#EE "Estonia"
* holder.reference = "urn:uuid:280cf9fd-4ef9-5f40-bc01-d8a8db164270"

Instance: ppd-epi-type2-example-paracetamol
InstanceOf: PackagedProductDefinitionUvEpi
Usage: #example
Title: "PackagedProductDefinition - WonderDrug 500 mg"
Description: "PackagedProductDefinition - WonderDrug 500 mg"
* id = "ppd-epi-type2-example-paracetamol"
* identifier.system = $example-id
* identifier.value = "ppd-epi-type2-example-paracetamol"
* status = $publication-status#active "Active"
* packageFor.reference = "urn:uuid:b5404984-1a18-55be-8063-3e2bf21116a7"
* packaging.type = $spor-rms#100000073498 "Box"
* packaging.quantity = 1
* packaging.packaging.type = $spor-rms#100000073496 "Blister"
* packaging.packaging.containedItem.item.reference.reference = "urn:uuid:c658a7a4-f077-5b3b-b4fb-b6098b67092b"
* packaging.packaging.containedItem.amount.value = 30
* packaging.packaging.containedItem.amount.unit = "Tablet"
* packaging.packaging.containedItem.amount.system = $edqm

Instance: mid-epi-type2-example-paracetamol
InstanceOf: ManufacturedItemDefinitionUvEpi
Usage: #example
Title: "ManufacturedItemDefinition - WonderDrug 500 mg"
Description: "ManufacturedItemDefinition - WonderDrug 500 mg"
* id = "mid-epi-type2-example-paracetamol"
* identifier.system = $example-id
* identifier.value = "mid-epi-type2-example-paracetamol"
* status = #active
* manufacturedDoseForm = $spor-rms#100000073664 "Tablet"
* unitOfPresentation = $spor-rms#200000002152 "Tablet"
// Physical characteristics using named slices
* property[shape].type = $epi-ig#shape "Shape"
* property[shape].valueCodeableConcept = $spor-rms#100000073670 "Round"
* property[color].type = $epi-ig#color "Color"
* property[color].valueCodeableConcept = $spor-rms#100000073586 "White"
* property[size].type = $epi-ig#size "Size"
* property[size].valueCodeableConcept = $spor-rms#100000000000 "10 mm"
* property[score].type = $epi-ig#score "Score"
* property[score].valueCodeableConcept = $spor-rms#100000000000 "Scored"
* property[imprint].type = $epi-ig#imprint "Imprint"
* property[imprint].valueMarkdown = "WD500"

Instance: apd-epi-type2-example-paracetamol
InstanceOf: AdministrableProductDefinitionUvEpi
Usage: #example
Title: "AdministrableProductDefinition - WonderDrug 500 mg"
Description: "AdministrableProductDefinition - WonderDrug 500 mg"
* id = "apd-epi-type2-example-paracetamol"
* identifier.system = $example-id
* identifier.value = "apd-epi-type2-example-paracetamol"
* status = #active
* formOf.reference = "urn:uuid:b5404984-1a18-55be-8063-3e2bf21116a7"
* administrableDoseForm = $spor-rms#100000073664 "Tablet"
* unitOfPresentation = $spor-rms#200000002152 "Tablet"
* producedFrom.reference = "urn:uuid:c658a7a4-f077-5b3b-b4fb-b6098b67092b"
* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"
// Physical characteristics using named slices
* property[shape].type = $epi-ig#shape "Shape"
* property[shape].valueCodeableConcept = $spor-rms#100000073670 "Round"
* property[color].type = $epi-ig#color "Color"
* property[color].valueCodeableConcept = $spor-rms#100000073586 "White"
* property[flavor].type = $epi-ig#flavor "Flavor"
* property[flavor].valueCodeableConcept = $spor-rms#100000000000 "None"
* property[image].type = $epi-ig#image "Image"
* property[image].valueAttachment.contentType = #image/png
* property[image].valueAttachment.data = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mP8z8BQDwAEhQGAhKmMIQAAAABJRU5ErkJggg=="
* property[image].valueAttachment.title = "Tablet image"

Instance: ingredient-epi-type2-example-paracetamol-active
InstanceOf: IngredientUvEpi
Usage: #example
Title: "Ingredient - Paracetamol"
Description: "Ingredient - Paracetamol"
* id = "ingredient-epi-type2-example-paracetamol-active"
* identifier.system = $example-id
* identifier.value = "ingredient-epi-type2-example-paracetamol-active"
* status = #active
* for.reference = "urn:uuid:c658a7a4-f077-5b3b-b4fb-b6098b67092b"
* role = $spor-rms#100000072072 "Active"
* function = $spor-rms#100000136065 "API"
* group = $spor-rms#100000136179 "Chemical"
* substance.code.concept = $spor-sms#100000000000 "Paracetamol"
* substance.strength.presentationRatio.numerator.value = 500
* substance.strength.presentationRatio.numerator.unit = "mg"
* substance.strength.presentationRatio.numerator.system = $ucum
* substance.strength.presentationRatio.numerator.code = #mg
* substance.strength.presentationRatio.denominator.value = 1
* substance.strength.presentationRatio.denominator.unit = "tablet"
* substance.strength.presentationRatio.denominator.system = $edqm
* substance.strength.presentationRatio.denominator.code = #10219000

Instance: ingredient-epi-type2-example-paracetamol-lactose
InstanceOf: IngredientUvEpi
Usage: #example
Title: "Ingredient - Lactose monohydrate"
Description: "Ingredient - Lactose monohydrate (excipient with known allergen effect)"
* id = "ingredient-epi-type2-example-paracetamol-lactose"
* identifier.system = $example-id
* identifier.value = "ingredient-epi-type2-example-paracetamol-lactose"
* status = #active
* for = Reference(mid-epi-type2-example-paracetamol)
* role = $spor-rms#100000072082 "Excipient"
* function = $spor-rms#100000136066 "Filler/diluent"
* group = $spor-rms#100000136178 "Carbohydrate"
* allergenicIndicator = true
* substance.code.concept = $spor-sms#100000090052 "Lactose monohydrate"

Instance: ingredient-epi-type2-example-paracetamol-excipient-1
InstanceOf: IngredientUvEpi
Usage: #example
Title: "Ingredient - Pregelatinised starch"
Description: "Ingredient - Pregelatinised starch"
* id = "ingredient-epi-type2-example-paracetamol-excipient-1"
* identifier.system = $example-id
* identifier.value = "ingredient-epi-type2-example-paracetamol-excipient-1"
* status = #active
* for.reference = "urn:uuid:c658a7a4-f077-5b3b-b4fb-b6098b67092b"
* role = $spor-rms#100000072082 "Excipient"
* substance.code.concept = $spor-sms#100000000001 "Pregelatinised starch"

Instance: ingredient-epi-type2-example-paracetamol-excipient-2
InstanceOf: IngredientUvEpi
Usage: #example
Title: "Ingredient - Maize starch"
Description: "Ingredient - Maize starch"
* id = "ingredient-epi-type2-example-paracetamol-excipient-2"
* identifier.system = $example-id
* identifier.value = "ingredient-epi-type2-example-paracetamol-excipient-2"
* status = #active
* for.reference = "urn:uuid:c658a7a4-f077-5b3b-b4fb-b6098b67092b"
* role = $spor-rms#100000072082 "Excipient"
* substance.code.concept = $spor-sms#100000000002 "Maize starch"

Instance: ingredient-epi-type2-example-paracetamol-excipient-3
InstanceOf: IngredientUvEpi
Usage: #example
Title: "Ingredient - Magnesium stearate"
Description: "Ingredient - Magnesium stearate"
* id = "ingredient-epi-type2-example-paracetamol-excipient-3"
* identifier.system = $example-id
* identifier.value = "ingredient-epi-type2-example-paracetamol-excipient-3"
* status = #active
* for.reference = "urn:uuid:c658a7a4-f077-5b3b-b4fb-b6098b67092b"
* role = $spor-rms#100000072082 "Excipient"
* substance.code.concept = $spor-sms#100000000003 "Magnesium stearate"
