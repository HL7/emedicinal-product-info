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
* entry[medicinalProduct].resource = mpd-epi-type3-example-wonderdrug
* entry[medicinalProduct].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-epi-type3-example-wonderdrug"
// referenced products
* entry[medicinalProduct].resource = mpd-epi-type2-example-paracetamol-100mg
* entry[medicinalProduct].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-epi-type2-example-paracetamol-100mg"
* entry[medicinalProduct].resource = mpd-epi-type2-example-paracetamol-200mg
* entry[medicinalProduct].fullUrl = "http://hl7.org/fhir/uv/emedicinal-product-info/MedicinalProductDefinition/mpd-epi-type2-example-paracetamol-200mg"
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
Title: "Composition - ePI Type 3 WonderDrug"
Description: "Composition - ePI Type 3 WonderDrug"
* id = "composition-epi-type3-example-wonderdrug"
* meta.versionId = "1"
* meta.lastUpdated = "2023-10-27T10:00:00Z"
* identifier.system = $example-id
* identifier.value = "composition-epi-type3-example-wonderdrug"
* status = #final
* language = #en
* text.status = #generated
* text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><p>WonderDrug ePI Type 3 Example</p></div>"
* type = $spor-rms#100000155538 "Package Leaflet"
* subject = Reference(mpd-epi-type3-example-wonderdrug)
* date = "2023-10-27"
* author = Reference(org-epi-type3-example-pharma)
* title = "WonderDrug ePI Type 3 Example"
* section.title = "Package Leaflet"
* section.code = $spor-rms#leaflet "Package Leaflet"
* section.text.status = #generated
* section.text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Package Leaflet</div>"
* section.section[0].title = "Clinical Particulars"
* section.section[=].code = $spor-rms#clinical-particulars "Clinical Particulars"
* section.section[=].text.status = #generated
* section.section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'>Clinical Particulars</div>"
* section.section[=].entry[0] = Reference(cud-indication-1)
* section.section[=].entry[+] = Reference(cud-indication-2)
* section.section[=].entry[+] = Reference(cud-contraindication-1)

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
* contact.address.text = "123 Pharma Way, 102 37 Prague 10, Czech Republic"
* contact.address.city = "Prague"
* contact.address.country = "Czech Republic"

Instance: mpd-epi-type3-example-wonderdrug
InstanceOf: MedicinalProductDefinitionUvEpi
Usage: #example
Title: "MedicinalProductDefinition - WonderDrug 500 mg tablets"
Description: "MedicinalProductDefinition - WonderDrug 500 mg tablets"
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
* name.part[=].type = $medicinal-product-name-part-type#DoseFormPart "Pharmaceutical dose form part"
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
* subject = Reference(mpd-epi-type3-example-wonderdrug)
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
* subject = Reference(mpd-epi-type3-example-wonderdrug)
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
* subject = Reference(mpd-epi-type3-example-wonderdrug)
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
* subject = Reference(mpd-epi-type3-example-wonderdrug)
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
* subject = Reference(mpd-epi-type3-example-wonderdrug)
* population.display = "Adults"
* contraindication.otherTherapy.treatment.concept = $sct#763158003 "Medicinal product (product)"
* contraindication.otherTherapy.relationshipType = http://hl7.org/fhir/CodeSystem/benefit-and-risk-relationship#contraindicated-only-with "Only contraindicated with"
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
* subject = Reference(mpd-epi-type3-example-wonderdrug)
* interaction.interactant.itemCodeableConcept = http://www.nlm.nih.gov/research/umls/rxnorm#11289 "Warfarin"
* category = http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-ig#interaction

Instance: medication-knowledge-epi-type3-example
InstanceOf: MedicationKnowledge
Usage: #example
Title: "MedicationKnowledge - WonderDrug"
Description: "MedicationKnowledge - WonderDrug"
* id = "medication-knowledge-epi-type3-example"
* status = #active
* code.text = "WonderDrug"
