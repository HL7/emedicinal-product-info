Extension: AuthorisationType
Id: ext-epi-authorisation-type
Title: "Authorisation Type"
Description: "Authorisation type for this list"
* value[x] only string
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ext-epi-authorisation-type"

Extension: MedicineDomain
Id: ext-epi-medicine-domain
Title: "Medicine Domain"
Description: "Medicine domain for this list"
* value[x] only Coding
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ext-epi-medicine-domain"

Extension: ProcedureNumber
Id: ext-epi-procedure-number
Title: "Procedure Number"
Description: "Procedure number for this list"
* value[x] only Identifier
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ext-epi-procedure-number"

Extension: VersionNumber
Id: ext-epi-version-number
Title: "Version Number"
Description: "Version number for this list"
* value[x] only string
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ext-epi-version-number"

Extension: Jurisdiction
Id: ext-epi-jurisdiction
Title: "Jurisdiction"
Description: "Jurisdiction for this list"
* value[x] only CodeableConcept
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ext-epi-jurisdiction"

Extension: EntryLanguage
Id: ext-epi-entry-language
Title: "Language"
Description: "Language of the document referenced in this entry"
* value[x] only CodeableConcept
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ext-epi-entry-language"

Extension: RegulatoryAgency
Id: ext-epi-regulatory-agency
Title: "Regulatory Agency"
Description: "The organization describing the regulator that authorized the ePIs in the list."
* value[x] only Reference(OrganizationUvEpi)
* ^url = "http://hl7.org/fhir/uv/emedicinal-product-info/StructureDefinition/ext-epi-regulatory-agency"
