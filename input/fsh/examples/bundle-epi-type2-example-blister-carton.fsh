Instance: bundle-epi-type2-example-blister-carton
InstanceOf: BundleEpiType2
Usage: #example
Title: "Bundle - ePI Type 2 WonderDrug Blister in Carton Example"
Description: "Bundle - ePI Type 2 WonderDrug 500 mg Blister in Carton Example"
* id = "bundle-epi-type2-example-blister-carton"
* meta.versionId = "1.0"
* meta.lastUpdated = "2026-03-31T12:00:00Z"
* meta.profile = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/bundle-epi-type2"
* type = #document
* timestamp = "2026-03-31T12:00:00Z"
* identifier.system = $ema-id
* identifier.value = "WONDERDRUG-500MG-CARTON-BUNDLE"
* entry[composition].fullUrl = "urn:uuid:a334cc7a-da0e-5bef-94f5-10c5b7bba84a"
* entry[composition].resource = composition-epi-type2-example-blister-carton
* entry[organization].fullUrl = "urn:uuid:280cf9fd-4ef9-5f40-bc01-d8a8db164270"
* entry[organization].resource = org-epi-type2-example-acme
* entry[medicinalProduct].fullUrl = "urn:uuid:41b936d1-7e8e-51b0-a8c8-c3205de94b3f"
* entry[medicinalProduct].resource = mpd-epi-type2-example-blister-carton
* entry[regulatedAuthorization].fullUrl = "urn:uuid:4e6f270b-cacf-57b4-a6b9-bb851f8d6b55"
* entry[regulatedAuthorization].resource = ra-epi-type2-example-blister-carton
* entry[packagedProduct].fullUrl = "urn:uuid:d5c711de-2a31-52e2-b4f9-475854df9877"
* entry[packagedProduct].resource = ppd-epi-type2-example-blister-carton
* entry[manufacturedItem].fullUrl = "urn:uuid:5aed7182-3e16-5862-b28c-54f56f645500"
* entry[manufacturedItem].resource = mid-epi-type2-example-blister-carton
* entry[administrableProduct].fullUrl = "urn:uuid:be905b0f-0d15-56ac-a018-01951a7de879"
* entry[administrableProduct].resource = apd-epi-type2-example-blister-carton
* entry[ingredient][0].fullUrl = "urn:uuid:b9dbba1e-96ae-568f-b970-e84522150452"
* entry[ingredient][0].resource = ingredient-epi-type2-example-blister-carton-active

Instance: composition-epi-type2-example-blister-carton
InstanceOf: CompositionUvEpi
Usage: #example
Title: "Composition - Type 2 WonderDrug Blister in Carton"
Description: "Composition for Type 2 WonderDrug 500 mg Blister in Carton"
* id = "composition-epi-type2-example-blister-carton"
* meta.versionId = "1"
* meta.lastUpdated = "2026-03-31T10:00:00Z"
* identifier.system = $example-id
* identifier.value = "composition-epi-type2-example-blister-carton"
* status = #final
* language = #en
* version = "1.0"
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml' lang='en' xml:lang='en'><p>Package Leaflet: Information for the user - WonderDrug Tablets</p></div>"
* type = $spor-rms#100000155538 "Package Leaflet"
* subject.reference = "urn:uuid:41b936d1-7e8e-51b0-a8c8-c3205de94b3f"
* date = "2026-03-31"
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
* section.entry[+].reference = "urn:uuid:41b936d1-7e8e-51b0-a8c8-c3205de94b3f"

Instance: mpd-epi-type2-example-blister-carton
InstanceOf: MedicinalProductDefinitionUvEpi
Usage: #example
Title: "MedicinalProductDefinition - WonderDrug 500 mg tablets Type 2 Carton"
Description: "MedicinalProductDefinition for WonderDrug 500 mg tablets (Type 2 Example Carton)"
* id = "mpd-epi-type2-example-blister-carton"
* identifier.system = $ema-id
* identifier.value = "WONDERDRUG-500MG-CARTON"
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
* contact.type = $epi-ig#marketing-authorization-holder "Marketing authorization holder"
* contact.contact.reference = "urn:uuid:280cf9fd-4ef9-5f40-bc01-d8a8db164270"

Instance: ra-epi-type2-example-blister-carton
InstanceOf: RegulatedAuthorizationUvEpi
Usage: #example
Title: "RegulatedAuthorization - WonderDrug 500 mg Carton"
Description: "RegulatedAuthorization - WonderDrug 500 mg Carton"
* id = "ra-epi-type2-example-blister-carton"
* identifier.system = $ema-id
* identifier.value = "MA-9876543210"
* status = $publication-status#active "Active"
* subject.reference = "urn:uuid:41b936d1-7e8e-51b0-a8c8-c3205de94b3f"
* type = $spor-rms#220000000061 "Marketing Authorisation"
* region = $iso3166#EE "Estonia"
* holder.reference = "urn:uuid:280cf9fd-4ef9-5f40-bc01-d8a8db164270"

Instance: ppd-epi-type2-example-blister-carton
InstanceOf: PackagedProductDefinitionUvEpi
Usage: #example
Title: "PackagedProductDefinition - WonderDrug 500 mg Carton"
Description: "PackagedProductDefinition - WonderDrug 500 mg Carton"
* id = "ppd-epi-type2-example-blister-carton"
* identifier[0].system = "https://www.gs1.org/gtin"
* identifier[0].value = "09876543210987"
* identifier[+].system = "http://example.com/sku"
* identifier[=].value = "WD500-CARTON-20"
* status = $publication-status#active "Active"
* packageFor.reference = "urn:uuid:41b936d1-7e8e-51b0-a8c8-c3205de94b3f"
* packaging.type = $spor-rms#100000073498 "Box"
* packaging.quantity = 1
* packaging.packaging.type = $spor-rms#100000073496 "Blister"
* packaging.packaging.quantity = 2
* packaging.packaging.containedItem.item.reference.reference = "urn:uuid:5aed7182-3e16-5862-b28c-54f56f645500"
* packaging.packaging.containedItem.amount.value = 10
* packaging.packaging.containedItem.amount.unit = "Tablet"
* packaging.packaging.containedItem.amount.system = $edqm

Instance: mid-epi-type2-example-blister-carton
InstanceOf: ManufacturedItemDefinitionUvEpi
Usage: #example
Title: "ManufacturedItemDefinition - WonderDrug 500 mg Carton"
Description: "ManufacturedItemDefinition - WonderDrug 500 mg Carton"
* id = "mid-epi-type2-example-blister-carton"
* identifier.system = $example-id
* identifier.value = "mid-epi-type2-example-blister-carton"
* status = #active
* manufacturedDoseForm = $spor-rms#100000073664 "Tablet"
* unitOfPresentation = $spor-rms#200000002152 "Tablet"
* property[shape].type = $epi-ig#shape "Shape"
* property[shape].valueCodeableConcept = $spor-rms#100000073670 "Round"
* property[color].type = $epi-ig#color "Color"
* property[color].valueCodeableConcept = $spor-rms#100000073586 "White"
* property[size].type = $epi-ig#size "Size"
* property[size].valueCodeableConcept = $spor-rms#100000000000 "12 mm"
* property[score].type = $epi-ig#score "Score"
* property[score].valueCodeableConcept = $spor-rms#100000000000 "Scored"
* property[imprint].type = $epi-ig#imprint "Imprint"
* property[imprint].valueMarkdown = "WD500"

Instance: apd-epi-type2-example-blister-carton
InstanceOf: AdministrableProductDefinitionUvEpi
Usage: #example
Title: "AdministrableProductDefinition - WonderDrug 500 mg Carton"
Description: "AdministrableProductDefinition - WonderDrug 500 mg Carton"
* id = "apd-epi-type2-example-blister-carton"
* identifier.system = $example-id
* identifier.value = "apd-epi-type2-example-blister-carton"
* status = #active
* formOf.reference = "urn:uuid:41b936d1-7e8e-51b0-a8c8-c3205de94b3f"
* administrableDoseForm = $spor-rms#100000073664 "Tablet"
* unitOfPresentation = $spor-rms#200000002152 "Tablet"
* producedFrom.reference = "urn:uuid:5aed7182-3e16-5862-b28c-54f56f645500"
* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"
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

Instance: ingredient-epi-type2-example-blister-carton-active
InstanceOf: IngredientUvEpi
Usage: #example
Title: "Ingredient - Paracetamol 500mg"
Description: "Ingredient - Paracetamol 500mg"
* id = "ingredient-epi-type2-example-blister-carton-active"
* identifier.system = $example-id
* identifier.value = "ingredient-epi-type2-example-blister-carton-active"
* status = #active
* for.reference = "urn:uuid:5aed7182-3e16-5862-b28c-54f56f645500"
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
