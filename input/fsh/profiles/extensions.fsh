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
