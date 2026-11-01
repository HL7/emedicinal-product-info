Profile: CompositionUvEpi
Parent: Composition
Id: Composition-uv-epi
Title: "Composition (ePI)"
Description: "This profile represents the constraints applied to the Composition resource used in the Electronic Product Information (ePI) FHIR Implementation Guide. This profile applies to all ePI Types (1, 2, 3, and 4)."
* ^status = #active
* ^version = "1.1.0"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* id 1..
* id ^short = "Unique Identifier for this ePI Instance"
* id ^definition = "A unique string that identifies this specific ePI resource instance on the server. This identifier is used for retrieving and referencing the ePI."
* meta.versionId 1..
* meta.versionId ^short = "Version Identifier"
* meta.versionId ^definition = "The specific version identifier of this ePI resource. It changes every time the resource is updated, supporting version history tracking."
* meta.lastUpdated 1..
* meta.lastUpdated ^short = "Date Last Changed"
* meta.lastUpdated ^definition = "The precise date and time when this version of the ePI resource was created or last modified on the server."
* meta.profile 1..
* meta.profile ^short = "Profile Conformity"
* meta.profile ^definition = "A canonical URL reference to the StructureDefinition that this ePI resource claims to conform to (e.g., the ePI Type 1 profile)."
* language 1..
* language ^short = "Language of the ePI content"
* language ^definition = "The code representing the language of the content in this ePI (e.g., 'en' for English, 'es' for Spanish). This ensures the correct language rendering for the user."
* version 1..
* version ^short = "Document Version"
* version ^definition = "The version of the ePI document content, representing the regulatory revision number (e.g., '1.0', '2.1'). This is distinct from meta.versionId which tracks server-side resource versioning."
* text 1..
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained contains binaryImage 0..*
* contained[binaryImage] only BinaryEpi
* contained[binaryImage] ^short = "All images used in the ePI, each embedded as a base64-encoded Binary resource"
* contained[binaryImage] ^definition = "Every image used in the ePI (for example, pictograms, chemical structures, diagrams and pack artwork) is embedded in the Composition as a contained Binary resource holding the base64-encoded image. The section text displays each image by referencing the contained Binary by its id (<img src=\"#id\"/>)."
* status 1..
* type.coding 1..1
* type.coding.system 1..1
* type.coding.code 1..1
* type.coding.display 1..1
* subject 1..
* subject only Reference(MedicinalProductDefinition)
* date 1..
* author 1..
* author only Reference(Organization-uv-epi)
* attester 0..
* attester.party only Reference(Organization-uv-epi)
* title 1..
* relatesTo 0..
* relatesTo ^short = "Reference to previous versions"
* relatesTo ^definition = "A reference to a previous version of this ePI or another related composition, used to establish a version history or relationship between documents."
* section 1..1
* section.id 1..
* section.entry only Reference(MedicinalProductDefinitionUvEpi or IngredientUvEpi or ManufacturedItemDefinitionUvEpi or AdministrableProductDefinitionUvEpi or SubstanceDefinitionUvEpi or PackagedProductDefinitionUvEpi or ClinicalUseDefinitionIndicationUvEpi or ClinicalUseDefinitionContraindicationUvEpi or ClinicalUseDefinitionInteractionUvEpi or ClinicalUseDefinitionUndesirableEffectUvEpi or ClinicalUseDefinitionWarningUvEpi or OrganizationUvEpi or RegulatedAuthorizationUvEpi)
* section.title 1..
* section.code.coding 1..1
* section.code.coding.system 1..1
* section.code.coding.code 1..1
* section.code.coding.display 1..1
* section.text 1..
* section.section 1..
* section.section.id 1..
* section.section.title 0..
* section.section.code.coding 0..1
* section.section.code.coding.system 1..1
* section.section.code.coding.code 1..1
* section.section.code.coding.display 1..1
* section.section.text 0..
* section.section.entry only Reference(MedicinalProductDefinitionUvEpi or IngredientUvEpi or ManufacturedItemDefinitionUvEpi or AdministrableProductDefinitionUvEpi or SubstanceDefinitionUvEpi or PackagedProductDefinitionUvEpi or ClinicalUseDefinitionIndicationUvEpi or ClinicalUseDefinitionContraindicationUvEpi or ClinicalUseDefinitionInteractionUvEpi or ClinicalUseDefinitionUndesirableEffectUvEpi or ClinicalUseDefinitionWarningUvEpi or OrganizationUvEpi or RegulatedAuthorizationUvEpi)
* section.section.section 0..
* section.section.section.id 1..
* section.section.section.title 0..
* section.section.section.code.coding 0..1
* section.section.section.code.coding.system 1..1
* section.section.section.code.coding.code 1..1
* section.section.section.code.coding.display 1..1
* section.section.section.text 0..
* section.section.section.entry only Reference(MedicinalProductDefinitionUvEpi or IngredientUvEpi or ManufacturedItemDefinitionUvEpi or AdministrableProductDefinitionUvEpi or SubstanceDefinitionUvEpi or PackagedProductDefinitionUvEpi or ClinicalUseDefinitionIndicationUvEpi or ClinicalUseDefinitionContraindicationUvEpi or ClinicalUseDefinitionInteractionUvEpi or ClinicalUseDefinitionUndesirableEffectUvEpi or ClinicalUseDefinitionWarningUvEpi or OrganizationUvEpi or RegulatedAuthorizationUvEpi)

// Element descriptions
* text ^short = "Rich text title of the ePI"
* text ^definition = "Rich text title of the ePI, for example the full title with line breaks and symbols such as ™ or ®."
* identifier ^short = "Unique business identifier (UUID) for this version of the Composition (same as SPL Document ID)"
* identifier ^definition = "Unique business identifier, as a UUID, for this version of the Composition only. A new identifier is assigned for each version. Equivalent to the SPL Document ID."
* status ^short = "preliminary | final | deprecated | cancelled | entered-in-error"
* status ^definition = "Lifecycle status of this version of the ePI, as described on the Version Control page: preliminary (draft under review), final (approved), deprecated (superseded or withdrawn), cancelled (draft abandoned before approval) or entered-in-error."
* type ^short = "Type of ePI document, from the regulator's national drug label template"
* type ^definition = "The type of ePI document. Each regulator populates this from the document types of its own national drug label templates (for example SmPC or Package Leaflet in the EU, Human Prescription Drug Label in the US, Product Monograph in Canada, or the prescription drug package insert in Japan). The bound value set is an example."
* subject ^short = "The medicinal product(s) described in the ePI"
* subject ^definition = "The medicinal product(s) described in the ePI. Links the document to the product details."
* date ^short = "Date of last revision for this version of the authorized ePI document"
* date ^definition = "Date of last revision for this version of the authorized ePI document."
* author ^short = "Organization accountable for the ePI and its content (Marketing Authorization Holder)"
* author ^definition = "The organization accountable for the ePI and its content: the Marketing Authorization Holder."
* title ^short = "Plain-text title of the ePI document (no rich text)"
* title ^definition = "Simple, plain-text title of the ePI document, without rich text. Use the text element for the rich text title."
* attester ^short = "Regulator that authorized the ePI and its content"
* attester ^definition = "The regulator that authorized the ePI and its content."
* attester.party ^short = "Regulator that authorized the ePI and its content"
* attester.party ^definition = "The regulator that authorized the ePI and its content."
* section ^short = "Root (level 1) section heading for the whole ePI"
* section ^definition = "The single root section (level 1) for the whole ePI. All other section headings are nested beneath it."
* section.id ^short = "Section ID (XML: <section id='...'>) used for hypertext links to and across sections"
* section.id ^definition = "Unique identifier for this section, used for hypertext links to and between sections. In XML it is serialized as an attribute (<section id=\"...\">), not as a child element."
* section.title ^short = "Section heading as worded by the company (e.g., template heading with <placeholders> replaced by the brand name)"
* section.title ^definition = "The section heading as worded by the company: the regulator's template heading, with placeholders such as <product name> replaced by the brand name."
* section.code ^short = "Regulator-defined code and display for this heading. Fixed by the regulator's template; not modifiable by the company"
* section.code ^definition = "Regulator-defined code and display name for this section or sub-section heading, taken from the regulator's national drug label template. The company cannot modify the code or display; both must comply with the regulator's rules. Company wording of the heading goes in title."
* section.text ^short = "Rich text content of the section (e.g., paragraphs, tables, bulleted lists)"
* section.text ^definition = "Rich text content of the section, such as paragraphs, tables and bulleted lists."
* section.entry ^short = "Semantic link from the section text to related structured content"
* section.entry ^definition = "Reference to a structured resource that the section's text describes, linking narrative to structured content. For example, the indications section references the ClinicalUseDefinition - Indication."
* section.section ^short = "Child (level 2) section headings"
* section.section ^definition = "Level 2 section headings, nested under the root section."
* section.section.id ^short = "Section ID (XML: <section id='...'>) used for hypertext links to and across sections"
* section.section.id ^definition = "Unique identifier for this section, used for hypertext links to and between sections. In XML it is serialized as an attribute (<section id=\"...\">), not as a child element."
* section.section.title ^short = "Section heading as worded by the company (e.g., template heading with <placeholders> replaced by the brand name)"
* section.section.title ^definition = "The section heading as worded by the company: the regulator's template heading, with placeholders such as <product name> replaced by the brand name."
* section.section.code ^short = "Regulator-defined code and display for this heading. Fixed by the regulator's template; not modifiable by the company"
* section.section.code ^definition = "Regulator-defined code and display name for this section or sub-section heading, taken from the regulator's national drug label template. The company cannot modify the code or display; both must comply with the regulator's rules. Company wording of the heading goes in title."
* section.section.text ^short = "Rich text content of the section (e.g., paragraphs, tables, bulleted lists)"
* section.section.text ^definition = "Rich text content of the section, such as paragraphs, tables and bulleted lists."
* section.section.entry ^short = "Semantic link from the section text to related structured content"
* section.section.entry ^definition = "Reference to a structured resource that the section's text describes, linking narrative to structured content. For example, the indications section references the ClinicalUseDefinition - Indication."
* section.section.section ^short = "Child (level 3) section headings"
* section.section.section ^definition = "Level 3 sub-section headings, nested under a level 2 section."
* section.section.section.id ^short = "Section ID (XML: <section id='...'>) used for hypertext links to and across sections"
* section.section.section.id ^definition = "Unique identifier for this section, used for hypertext links to and between sections. In XML it is serialized as an attribute (<section id=\"...\">), not as a child element."
* section.section.section.title ^short = "Section heading as worded by the company (e.g., template heading with <placeholders> replaced by the brand name)"
* section.section.section.title ^definition = "The section heading as worded by the company: the regulator's template heading, with placeholders such as <product name> replaced by the brand name."
* section.section.section.code ^short = "Regulator-defined code and display for this heading. Fixed by the regulator's template; not modifiable by the company"
* section.section.section.code ^definition = "Regulator-defined code and display name for this section or sub-section heading, taken from the regulator's national drug label template. The company cannot modify the code or display; both must comply with the regulator's rules. Company wording of the heading goes in title."
* section.section.section.text ^short = "Rich text content of the section (e.g., paragraphs, tables, bulleted lists)"
* section.section.section.text ^definition = "Rich text content of the section, such as paragraphs, tables and bulleted lists."
* section.section.section.entry ^short = "Semantic link from the section text to related structured content"
* section.section.section.entry ^definition = "Reference to a structured resource that the section's text describes, linking narrative to structured content. For example, the indications section references the ClinicalUseDefinition - Indication."

// Terminology
* status from EpiCompositionStatus (required)
* type from VsEpiType (preferred)
