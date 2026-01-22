Profile: CompositionEpiType1
Parent: Composition
Id: composition-epi-type1
Title: "Composition - ePI Type 1-3"
Description: "This profile represents the constraints applied to the Composition resource used in the Electronic Product Information (ePI) FHIR Implementation Guide. This profile applies to all ePI Types (1, 2, and 3)."
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
* text ^short = "Narrative Title of the ePI"
* text ^definition = "The narrative title of the ePI, providing a human-readable summary or identification of the document content."
* contained ^slicing.discriminator.type = #type
* contained ^slicing.discriminator.path = "$this"
* contained ^slicing.rules = #open
* contained contains binaryImage 0..*
* contained[binaryImage] only Binary
* identifier.system 1..1
* identifier.value 1..1
* status 1..
* status ^short = "Workflow Status (e.g., preliminary, final)"
* status ^definition = "The workflow status of this ePI document (e.g., 'preliminary', 'final', 'amended'). This indicates the current state of the document in its lifecycle."
* type.coding 1..1
* type.coding.system 1..1
* type.coding.code 1..1
* type.coding.display 1..1
* subject 1..
* subject only Reference(MedicinalProductDefinition)
* subject ^short = "The Medicinal Product described"
* subject ^definition = "A reference to the Medicinal Product(s) that are described by this ePI. This links the document to the specific product details."
* date 1..
* date ^short = "Date of Authorization or Change"
* date ^definition = "The official date when this version of the ePI was authorized or last significantly changed effectively."
* author 1..
* author only Reference(Organization-uv-epi)
* author ^short = "Organization responsible for content"
* author ^definition = "The organization responsible for the content of this ePI, typically the Marketing Authorization Holder (MAH) or the Regulatory Authority."
* title 1..
* title ^short = "Official Title of the ePI"
* title ^definition = "The official title of the ePI document, usually derived from the product name and document type."
* relatesTo 0..
* relatesTo ^short = "Reference to previous versions"
* relatesTo ^definition = "A reference to a previous version of this ePI or another related composition, used to establish a version history or relationship between documents."
* section 0..1
* section ^short = "Root / Parent Section"
* section ^definition = "The root (parent) section of the document hierarchy. In this profile, there is only one top-level section which serves as the main container."
* section.title 1..
* section.title ^short = "Parent Section Title"
* section.title ^definition = "The title of the specific section in the ePI."
* section.code.coding 1..1
* section.code.coding.system 1..1
* section.code.coding.code 1..1
* section.code.coding.display 1..1
* section.text 1..
* section.text ^short = "Parent Section Text"
* section.text ^definition = "The actual text content of the section."
* section.section 1..
* section.section ^short = "Nested Content Sections"
* section.section ^definition = "The nested child sections containing the actual detailed content of the ePI."
* section.section.title 0..
* section.section.title ^short = "Title of the nested section"
* section.section.title ^definition = "The title of the child section."
* section.section.code.coding 0..1
* section.section.code.coding.system 1..1
* section.section.code.coding.code 1..1
* section.section.code.coding.display 1..1
* section.section.text 0..
* section.section.text ^short = "Text content of the nested section"
* section.section.text ^definition = "The text content of the child section."
