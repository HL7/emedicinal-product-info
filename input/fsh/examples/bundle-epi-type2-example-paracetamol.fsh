Instance: bundle-epi-type2-example-paracetamol
InstanceOf: BundleEpiType2
Usage: #example
Title: "Bundle - ePI Type 2 Paracetamol Example"
Description: "Bundle - ePI Type 2 Paracetamol Example"
* id = "bundle-epi-type2-example-paracetamol"
* meta.versionId = "1.0"
* meta.lastUpdated = "2023-01-25T12:00:00Z"
* type = #document
* timestamp = "2023-01-25T12:00:00Z"
* identifier.system = $ema-id
* identifier.value = "WONDERDRUG-500MG-BUNDLE"
* entry[composition].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Composition/composition-epi-type2-example-paracetamol"
* entry[composition].resource = composition-epi-type2-example-paracetamol
* entry[organization].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Organization/org-epi-type2-example-acme"
* entry[organization].resource = org-epi-type2-example-acme
* entry[medicinalProduct].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-epi-type2-example-paracetamol"
* entry[medicinalProduct].resource = mpd-epi-type2-example-paracetamol
* entry[regulatedAuthorization].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/RegulatedAuthorization/ra-epi-type2-example-paracetamol"
* entry[regulatedAuthorization].resource = ra-epi-type2-example-paracetamol
* entry[packagedProduct].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/PackagedProductDefinition/ppd-epi-type2-example-paracetamol"
* entry[packagedProduct].resource = ppd-epi-type2-example-paracetamol
* entry[manufacturedItem].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/ManufacturedItemDefinition/mid-epi-type2-example-paracetamol"
* entry[manufacturedItem].resource = mid-epi-type2-example-paracetamol
* entry[administrableProduct].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/AdministrableProductDefinition/apd-epi-type2-example-paracetamol"
* entry[administrableProduct].resource = apd-epi-type2-example-paracetamol
* entry[ingredient][0].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Ingredient/ingredient-epi-type2-example-paracetamol-active"
* entry[ingredient][0].resource = ingredient-epi-type2-example-paracetamol-active
* entry[ingredient][+].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Ingredient/ingredient-epi-type2-example-paracetamol-excipient-1"
* entry[ingredient][=].resource = ingredient-epi-type2-example-paracetamol-excipient-1
* entry[ingredient][+].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Ingredient/ingredient-epi-type2-example-paracetamol-excipient-2"
* entry[ingredient][=].resource = ingredient-epi-type2-example-paracetamol-excipient-2
* entry[ingredient][+].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/Ingredient/ingredient-epi-type2-example-paracetamol-excipient-3"
* entry[ingredient][=].resource = ingredient-epi-type2-example-paracetamol-excipient-3

Instance: composition-epi-type2-example-paracetamol
InstanceOf: CompositionEpiType1
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
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>Package Leaflet: Information for the user - Paracetamol Tablets</p></div>"
* type = $spor-rms#100000155538 "Package Leaflet"
* subject = Reference(http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-epi-type2-example-paracetamol)
* date = "2023-01-25"
* author = Reference(org-epi-type2-example-acme)
* title = "Package Leaflet: Information for the user - WonderDrug 500 mg tablets"
* section.title = "Package Leaflet"
* section.code = $spor-rms#100000155538 "Package Leaflet"
* section.text.status = #generated
* section.text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Package Leaflet</div>"
* section.section[0].title = "1. What is in this leaflet"
* section.section[=].code = $spor-rms#100000155538 "1. What is in this leaflet"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><h2>1. What is in this leaflet</h2><p>Read all of this leaflet carefully before you start taking this medicine because it contains important information for you.</p></div>"
* section.entry[0] = Reference(org-epi-type2-example-acme)
* section.entry[+] = Reference(mpd-epi-type2-example-paracetamol)
// * section.entry[+] matches other resources... keeping it simple for now, can add all 15 if needed for validation

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
* contact.contact = Reference(org-epi-type2-example-acme)

Instance: ra-epi-type2-example-paracetamol
InstanceOf: RegulatedAuthorizationUvEpi
Usage: #example
Title: "RegulatedAuthorization - WonderDrug 500 mg"
Description: "RegulatedAuthorization - WonderDrug 500 mg"
* id = "ra-epi-type2-example-paracetamol"
* identifier.system = $ema-id
* identifier.value = "MA-123456789"
* status = $publication-status#active "Active"
* subject = Reference(http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-epi-type2-example-paracetamol)
* type = $spor-rms#220000000061 "Marketing Authorisation"
* region = $iso3166#EE "Estonia"
* holder = Reference(org-epi-type2-example-acme)

Instance: ppd-epi-type2-example-paracetamol
InstanceOf: PackagedProductDefinitionUvEpi
Usage: #example
Title: "PackagedProductDefinition - WonderDrug 500 mg"
Description: "PackagedProductDefinition - WonderDrug 500 mg"
* id = "ppd-epi-type2-example-paracetamol"
* identifier.system = $example-id
* identifier.value = "ppd-epi-type2-example-paracetamol"
* status = $publication-status#active
* packageFor = Reference(mpd-epi-type2-example-paracetamol)
* packaging.type = $spor-rms#100000073498 "Box"
* packaging.quantity = 1
* packaging.packaging.type = $spor-rms#100000073496 "Blister"
* packaging.packaging.containedItem.item.reference = Reference(mid-epi-type2-example-paracetamol)
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

Instance: apd-epi-type2-example-paracetamol
InstanceOf: AdministrableProductDefinitionUvEpi
Usage: #example
Title: "AdministrableProductDefinition - WonderDrug 500 mg"
Description: "AdministrableProductDefinition - WonderDrug 500 mg"
* id = "apd-epi-type2-example-paracetamol"
* identifier.system = $example-id
* identifier.value = "apd-epi-type2-example-paracetamol"
* status = #active
* formOf = Reference(mpd-epi-type2-example-paracetamol)
* administrableDoseForm = $spor-rms#100000073664 "Tablet"
* unitOfPresentation = $spor-rms#200000002152 "Tablet"
* producedFrom = Reference(mid-epi-type2-example-paracetamol)
* routeOfAdministration.code = $spor-rms#100000073619 "Oral use"

Instance: ingredient-epi-type2-example-paracetamol-active
InstanceOf: IngredientUvEpi
Usage: #example
Title: "Ingredient - Paracetamol"
Description: "Ingredient - Paracetamol"
* id = "ingredient-epi-type2-example-paracetamol-active"
* identifier.system = $example-id
* identifier.value = "ingredient-epi-type2-example-paracetamol-active"
* status = #active
* for = Reference(mid-epi-type2-example-paracetamol)
* role = $spor-rms#100000072072 "Active"
* substance.code.concept = $spor-sms#100000000000 "Paracetamol"
* substance.strength.presentationRatio.numerator.value = 500
* substance.strength.presentationRatio.numerator.unit = "mg"
* substance.strength.presentationRatio.numerator.system = $ucum
* substance.strength.presentationRatio.numerator.code = #mg
* substance.strength.presentationRatio.denominator.value = 1
* substance.strength.presentationRatio.denominator.unit = "tablet"
* substance.strength.presentationRatio.denominator.system = $edqm
* substance.strength.presentationRatio.denominator.code = #10219000

Instance: ingredient-epi-type2-example-paracetamol-excipient-1
InstanceOf: IngredientUvEpi
Usage: #example
Title: "Ingredient - Pregelatinised starch"
Description: "Ingredient - Pregelatinised starch"
* id = "ingredient-epi-type2-example-paracetamol-excipient-1"
* identifier.system = $example-id
* identifier.value = "ingredient-epi-type2-example-paracetamol-excipient-1"
* status = #active
* for = Reference(mid-epi-type2-example-paracetamol)
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
* for = Reference(mid-epi-type2-example-paracetamol)
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
* for = Reference(mid-epi-type2-example-paracetamol)
* role = $spor-rms#100000072082 "Excipient"
* substance.code.concept = $spor-sms#100000000003 "Magnesium stearate"
