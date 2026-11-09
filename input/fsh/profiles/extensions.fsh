Extension: AuthorisationType
Id: ext-epi-authorisation-type
Title: "Authorisation Type"
Description: "Authorisation type for this list"
* value[x] only string
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ext-epi-authorisation-type"
* ^context[+].type = #element
* ^context[=].expression = "List"

Extension: MedicineDomain
Id: ext-epi-medicine-domain
Title: "Medicine Domain"
Description: "Medicine domain for this list"
* value[x] only Coding
* value[x] from VsMedicineDomain (example)
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ext-epi-medicine-domain"
* ^context[+].type = #element
* ^context[=].expression = "List"

Extension: ProcedureNumber
Id: ext-epi-procedure-number
Title: "Procedure Number"
Description: "Procedure number for this list"
* value[x] only Identifier
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ext-epi-procedure-number"
* ^context[+].type = #element
* ^context[=].expression = "List"

Extension: VersionNumber
Id: ext-epi-version-number
Title: "Version Number"
Description: "Version number for this list"
* value[x] only string
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ext-epi-version-number"
* ^context[+].type = #element
* ^context[=].expression = "List"

Extension: Jurisdiction
Id: ext-epi-jurisdiction
Title: "Jurisdiction"
Description: "Jurisdiction for this list"
* value[x] only CodeableConcept
* value[x] from http://hl7.org/fhir/ValueSet/jurisdiction (example)
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ext-epi-jurisdiction"
* ^context[+].type = #element
* ^context[=].expression = "List"

Extension: EntryLanguage
Id: ext-epi-entry-language
Title: "Language"
Description: "Language of the document referenced in this entry"
* value[x] only CodeableConcept
* value[x] from VsLanguage (preferred)
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ext-epi-entry-language"
* ^context[+].type = #element
* ^context[=].expression = "List.entry"

Extension: RegulatoryAgency
Id: ext-epi-regulatory-agency
Title: "Regulatory Agency"
Description: "The organization describing the regulator that authorized the ePIs in the list."
* value[x] only Reference(OrganizationUvEpi)
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ext-epi-regulatory-agency"
* ^context[+].type = #element
* ^context[=].expression = "List"

Extension: EpiTextLink
Id: epi-text-link
Title: "ePI Text Link"
Description: "Links span ids in a Composition section narrative to one structured target. Equivalent to the core [textLink](http://hl7.org/fhir/extensions/StructureDefinition-textLink.html) extension (`http://hl7.org/fhir/StructureDefinition/textLink`), except that it may repeat, one per target, and it may be used only on the narrative of a Composition section, at any of the first five section levels (from `Composition.section.text` to `Composition.section.section.section.section.section.text`). The next version of this IG will be based on FHIR R6; if the core textLink extension allows repetition by then, this extension is expected to be deprecated in favour of the core extension.\n\n**How to use:**\n\n1. In `section.text.div`, wrap each phrase that refers to a structured resource in a `span` element with an `id` attribute. The id must be unique within the narrative and start with a letter (for example `sp-01`).\n2. Add one ePI Text Link to `section.text` for each target resource (or element) that the narrative refers to.\n3. In each ePI Text Link, add one `htmlid` for each span that points to that target, and exactly one `data` holding the target's `fullUrl`, optionally followed by `#` and the id of an element inside that resource.\n4. Reference the same target resource in `section.entry` of the same section.\n5. Use `selector` only when the target element cannot carry an id; it holds a simple FHIRPath that selects part of the target.\n\nThe sub-extensions have the same names and meaning as in the core textLink extension, so switching to the core extension later changes only the outer extension URL."
* insert SetFmmandStatusRule(1, trial-use)
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/epi-text-link"
* ^context[+].type = #element
* ^context[=].expression = "Composition.section.text"
* ^context[+].type = #element
* ^context[=].expression = "Composition.section.section.text"
* ^context[+].type = #element
* ^context[=].expression = "Composition.section.section.section.text"
* ^context[+].type = #element
* ^context[=].expression = "Composition.section.section.section.section.text"
* ^context[+].type = #element
* ^context[=].expression = "Composition.section.section.section.section.section.text"
* . ^short = "Text Link (repeatable ePI equivalent of the core textLink extension)"
* . ^definition = "Link between narrative elements and structured data items in resources"
* . ^comment = "Used to denote which portions of the narrative are linked to (usually, generated from) structured data in resources. This information might be used in several different ways, including translating and regenerating narrative in applications that are using/presenting the narrative. Unlike the core textLink extension, this extension may repeat: use one ePI Text Link for each target."
* extension contains htmlid 1..* and data 1..1 and selector 0..1
* extension[htmlid] ^short = "Unique identifier"
* extension[htmlid] ^definition = "The id attribute on an element in the xhtml narrative"
* extension[htmlid].value[x] only string
* extension[htmlid].value[x] ^definition = "The actual HTML element id"
* extension[data] ^short = "Unique identifier"
* extension[data] ^definition = "The id attribute on a resource element (#{id}, relative#{id} or https://absolute#{id})"
* extension[data] ^comment = "The reference can be a fragment to a reference in the resource that contains the narrative, or a relative or absolute URL, optionally with a fragment that identifies an element in the other resource."
* extension[data].value[x] only uri
* extension[data].value[x] ^short = "The actual data element in this resource, or another resource"
* extension[selector] ^short = "FHIRPath that selects a subset of the identified data"
* extension[selector] ^definition = "FHIRPath that selects a subset of the identified data. This sub-extension exists because in some circumstances, the specific data items are in resources where the constructor of the narrative can't introduce specific ids on the relevent elements"
* extension[selector].value[x] only string
* extension[selector].value[x] ^short = "Simple FHIRPath that can't use .resolve()"
