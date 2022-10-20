Instance: epi-server
InstanceOf: CapabilityStatement
Usage: #definition
* url = "http://hl7.org/fhir/uv/vulcan-eproduct-info/CapabilityStatement/epi-server"
* version = "5.0.0-cibuild"
* name = "ePI FHIR Capability Statement (draft 1)"
* status = #draft
* experimental = false
* date = "2022-10-19"
* publisher = "Vulcan Accelerator on behalf of the HL7 PC WG"

* description = "This section describes a minumum expected capabilities of an ePI FHIR Server which is responsible for providing responses to the queries submitted by the ePI clients. Please refer to the XML or JSON versions of this specification for details on which elements search is to be enabled on. A compliant server SHALL adhere to the requirements listed in this resource, and implement the RESTful behavior according to the FHIR specification."
* kind = #requirements

* fhirVersion = #5.0.0-cibuild
* format[0] = #xml
* format[+] = #json
* format[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHALL
* format[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* format[=].extension.valueCode = #SHALL

* implementationGuide[0] = "http://hl7.org/fhir/uv/vulcan-eproduct-info/ImplementationGuide/hl7.fhir.uv.vulcan-eproduct-info"
* implementationGuide[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* implementationGuide[=].extension.valueCode = #SHOULD

* rest.mode = #server
* rest.documentation = "A minumum functionality for ePI. Refer to the FHIR specification for further requirements, and the details in the computable version of this Capabiltiy Statement"
* rest.security.cors = true
//* rest.security.service = http://terminology.hl7.org/CodeSystem/restful-security-service#SMART-on-FHIR "SMART-on-FHIR"
//* rest.security.service.text = "See http://docs.smarthealthit.org/"
//* rest.security.description = "This is the Capability Statement to declare that the server supports SMART-on-FHIR. See the SMART-on-FHIR docs for the extension that would go with such a server"

* rest.security.description = "1. See the [General Security Considerations](security.html) section for requirements and recommendations.\n1. A server **SHALL** reject any unauthorized requests by returning an `HTTP 401` \"Unauthorized\", `HTTP 403` \"Forbidden\", or `HTTP 404` \"Not Found\""

* rest.resource[0].type = #AdministrableProductDefinition
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/AdministrableProductDefinition"

* rest.resource[=].supportedProfile = "http://hl7.org/fhir/uv/vulcan-eproduct-info/StructureDefinition/AdministrableProductDefinition-uv-epi"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].referencePolicy[0] = #literal
* rest.resource[=].referencePolicy[+] = #logical
* rest.resource[=].searchInclude[0] = "AdministrableProductDefinition.manufactured-item"
* rest.resource[=].searchInclude[+] = "AdministrableProductDefinition.device"
* rest.resource[=].searchInclude[+] = "AdministrableProductDefinition.form-of"
* rest.resource[=].searchRevInclude = "Ingredient.for"
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AdministrableProductDefinition-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "An identifier for the administrable product"
* rest.resource[=].searchParam[+].name = "manufactured-item"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AdministrableProductDefinition-manufactured-item"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The manufactured item(s) that this administrable product is produced from. Either a single item, or several that are mixed before administration (e.g. a power item and a solution item). Note that these are not raw ingredients"
* rest.resource[=].searchParam[+].name = "ingredient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AdministrableProductDefinition-ingredient"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The ingredients of this administrable medicinal product"
* rest.resource[=].searchParam[+].name = "route"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AdministrableProductDefinition-route"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Coded expression for the route"
* rest.resource[=].searchParam[+].name = "dose-form"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AdministrableProductDefinition-dose-form"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The administrable dose form, i.e. the dose form of the final product after necessary reconstitution or processing"
* rest.resource[=].searchParam[+].name = "device"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AdministrableProductDefinition-device"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "A device that is integral to the medicinal product, in effect being considered as an \"ingredient\" of the medicinal product. This is not intended for devices that are just co-packaged"
* rest.resource[=].searchParam[+].name = "form-of"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AdministrableProductDefinition-form-of"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The medicinal product that this is an administrable form of. This is not a reference to the item(s) that make up this administrable form - it is the whole product"
* rest.resource[=].searchParam[+].name = "target-species"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AdministrableProductDefinition-target-species"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Coded expression for the species"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/AdministrableProductDefinition-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The status of this administrable product. Enables tracking the life-cycle of the content."

* rest.resource[+].type = #Bundle
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Bundle"

* rest.resource[=].supportedProfile = "http://hl7.org/fhir/uv/vulcan-eproduct-info/StructureDefinition/Bundle-uv-epi"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].referencePolicy[0] = #literal
* rest.resource[=].referencePolicy[+] = #logical
* rest.resource[=].searchInclude[0] = "Bundle.composition"
* rest.resource[=].searchInclude[+] = "Bundle.message"
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Bundle-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Persistent identifier for the bundle"
* rest.resource[=].searchParam[+].name = "composition"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Bundle-composition"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The first resource in the bundle, if the bundle type is \"document\" - this is a composition, and this parameter provides access to search its contents"
* rest.resource[=].searchParam[+].name = "message"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Bundle-message"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The first resource in the bundle, if the bundle type is \"message\" - this is a message header, and this parameter provides access to search its contents"
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Bundle-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "document | message | transaction | transaction-response | batch | batch-response | history | searchset | collection | subscription-notification"
* rest.resource[=].searchParam[+].name = "timestamp"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Bundle-timestamp"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "When the bundle was assembled"

* rest.resource[+].type = #CapabilityStatement
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/CapabilityStatement"

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].referencePolicy[0] = #literal
* rest.resource[=].referencePolicy[+] = #logical
* rest.resource[=].searchInclude[0] = "CapabilityStatement.resource-profile"
* rest.resource[=].searchInclude[+] = "CapabilityStatement.supported-profile"
* rest.resource[=].searchInclude[+] = "CapabilityStatement.guide"
* rest.resource[=].searchRevInclude = "RequestOrchestration.participant"
* rest.resource[=].searchParam[0].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/conformance-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "The capability statement publication date"
* rest.resource[=].searchParam[+].name = "resource-profile"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CapabilityStatement-resource-profile"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "A profile id invoked in a capability statement"
* rest.resource[=].searchParam[+].name = "context-type-value"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/conformance-context-type-value"
* rest.resource[=].searchParam[=].type = #composite
* rest.resource[=].searchParam[=].documentation = "A use context type and value assigned to the capability statement"
* rest.resource[=].searchParam[+].name = "software"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CapabilityStatement-software"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Part of the name of a software application"
* rest.resource[=].searchParam[+].name = "resource"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CapabilityStatement-resource"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Name of a resource mentioned in a capability statement"
* rest.resource[=].searchParam[+].name = "jurisdiction"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/conformance-jurisdiction"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Intended jurisdiction for the capability statement"
* rest.resource[=].searchParam[+].name = "format"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CapabilityStatement-format"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "formats supported (xml | json | ttl | mime type)"
* rest.resource[=].searchParam[+].name = "description"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/conformance-description"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The description of the capability statement"
* rest.resource[=].searchParam[+].name = "context-type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/conformance-context-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A type of use context assigned to the capability statement"
* rest.resource[=].searchParam[+].name = "fhirversion"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CapabilityStatement-fhirversion"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The version of FHIR"
* rest.resource[=].searchParam[+].name = "title"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/conformance-title"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The human-friendly name of the capability statement"
* rest.resource[=].searchParam[+].name = "version"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/conformance-version"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The business version of the capability statement"
* rest.resource[=].searchParam[+].name = "supported-profile"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CapabilityStatement-supported-profile"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Profiles for use cases supported"
* rest.resource[=].searchParam[+].name = "url"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/conformance-url"
* rest.resource[=].searchParam[=].type = #uri
* rest.resource[=].searchParam[=].documentation = "The uri that identifies the capability statement"
* rest.resource[=].searchParam[+].name = "mode"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CapabilityStatement-mode"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Mode - restful (server/client) or messaging (sender/receiver)"
* rest.resource[=].searchParam[+].name = "context-quantity"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/conformance-context-quantity"
* rest.resource[=].searchParam[=].type = #quantity
* rest.resource[=].searchParam[=].documentation = "A quantity- or range-valued use context assigned to the capability statement"
* rest.resource[=].searchParam[+].name = "security-service"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CapabilityStatement-security-service"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "OAuth | SMART-on-FHIR | NTLM | Basic | Kerberos | Certificates"
* rest.resource[=].searchParam[+].name = "context"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/conformance-context"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A use context assigned to the capability statement"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/conformance-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Computationally friendly name of the capability statement"
* rest.resource[=].searchParam[+].name = "publisher"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/conformance-publisher"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Name of the publisher of the capability statement"
* rest.resource[=].searchParam[+].name = "context-type-quantity"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/conformance-context-type-quantity"
* rest.resource[=].searchParam[=].type = #composite
* rest.resource[=].searchParam[=].documentation = "A use context type and quantity- or range-based value assigned to the capability statement"
* rest.resource[=].searchParam[+].name = "guide"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/CapabilityStatement-guide"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Implementation guides supported"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/conformance-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The current status of the capability statement"


* rest.resource[+].type = #ClinicalUseDefinition
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/ClinicalUseDefinition"

* rest.resource[=].supportedProfile[0] = "http://hl7.org/fhir/uv/vulcan-eproduct-info/StructureDefinition/ClinicalUseDefinition-contraindication-uv-epi"
* rest.resource[=].supportedProfile[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/uv/vulcan-eproduct-info/StructureDefinition/ClinicalUseDefinition-indication-uv-epi"
* rest.resource[=].supportedProfile[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/uv/vulcan-eproduct-info/StructureDefinition/ClinicalUseDefinition-interaction-uv-epi"
* rest.resource[=].supportedProfile[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/uv/vulcan-eproduct-info/StructureDefinition/ClinicalUseDefinition-warning-uv-epi"
* rest.resource[=].supportedProfile[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL
* rest.resource[=].supportedProfile[+] = "http://hl7.org/fhir/uv/vulcan-eproduct-info/StructureDefinition/ClinicalUseDefinition-undesirableEffect-uv-epi"
* rest.resource[=].supportedProfile[=].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile[=].extension.valueCode = #SHALL

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].referencePolicy[0] = #literal
* rest.resource[=].referencePolicy[+] = #logical
* rest.resource[=].searchInclude[0] = "ClinicalUseDefinition.contraindication-reference"
* rest.resource[=].searchInclude[+] = "ClinicalUseDefinition.indication-reference"
* rest.resource[=].searchInclude[+] = "ClinicalUseDefinition.product"
* rest.resource[=].searchInclude[+] = "ClinicalUseDefinition.subject"
* rest.resource[=].searchInclude[+] = "ClinicalUseDefinition.effect-reference"
* rest.resource[=].searchParam[0].name = "contraindication-reference"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ClinicalUseDefinition-contraindication-reference"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The situation that is being documented as contraindicating against this item, as a reference"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ClinicalUseDefinition-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Business identifier for this issue"
* rest.resource[=].searchParam[+].name = "indication-reference"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ClinicalUseDefinition-indication-reference"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The situation that is being documented as an indicaton for this item, as a reference"
* rest.resource[=].searchParam[+].name = "product"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ClinicalUseDefinition-product"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The medicinal product for which this is a clinical usage issue"
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ClinicalUseDefinition-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The resource for which this is a clinical usage issue"
* rest.resource[=].searchParam[+].name = "effect"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ClinicalUseDefinition-effect"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The situation in which the undesirable effect may manifest, as a code"
* rest.resource[=].searchParam[+].name = "interaction"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ClinicalUseDefinition-interaction"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The type of the interaction e.g. drug-drug interaction, drug-food interaction, drug-lab test interaction"
* rest.resource[=].searchParam[+].name = "indication"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ClinicalUseDefinition-indication"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The situation that is being documented as an indicaton for this item, as a code"
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ClinicalUseDefinition-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "indication | contraindication | interaction | undesirable-effect | warning"
* rest.resource[=].searchParam[+].name = "contraindication"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ClinicalUseDefinition-contraindication"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The situation that is being documented as contraindicating against this item, as a code"
* rest.resource[=].searchParam[+].name = "effect-reference"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ClinicalUseDefinition-effect-reference"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The situation in which the undesirable effect may manifest, as a reference"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ClinicalUseDefinition-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Whether this is a current issue or one that has been retired etc"

* rest.resource[+].type = #Composition
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Composition"

* rest.resource[=].supportedProfile = "http://hl7.org/fhir/uv/vulcan-eproduct-info/StructureDefinition/Composition-uv-epi"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].referencePolicy[0] = #literal
* rest.resource[=].referencePolicy[+] = #logical
* rest.resource[=].searchInclude[0] = "Composition.author"
* rest.resource[=].searchInclude[+] = "Composition.subject"
* rest.resource[=].searchInclude[+] = "Composition.encounter"
* rest.resource[=].searchInclude[+] = "Composition.attester"
* rest.resource[=].searchInclude[+] = "Composition.entry"
* rest.resource[=].searchInclude[+] = "Composition.related"
* rest.resource[=].searchInclude[+] = "Composition.patient"
* rest.resource[=].searchRevInclude = "Procedure.report"
* rest.resource[=].searchParam[0].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Composition editing time"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Version-independent identifier for the Composition"
* rest.resource[=].searchParam[+].name = "period"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Composition-period"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "The period covered by the documentation"
* rest.resource[=].searchParam[+].name = "author"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Composition-author"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who and/or what authored the composition"
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Composition-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who and/or what the composition is about"
* rest.resource[=].searchParam[+].name = "section"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Composition-section"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Classification of section (recommended)"
* rest.resource[=].searchParam[+].name = "encounter"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-encounter"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Context of the Composition"
* rest.resource[=].searchParam[+].name = "title"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Composition-title"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Human Readable name/title"
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Kind of composition (LOINC if possible)"
* rest.resource[=].searchParam[+].name = "version"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Composition-version"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The business version of the activity definition"
* rest.resource[=].searchParam[+].name = "attester"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Composition-attester"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who attested the composition"
* rest.resource[=].searchParam[+].name = "url"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Composition-url"
* rest.resource[=].searchParam[=].type = #uri
* rest.resource[=].searchParam[=].documentation = "The uri that identifies the activity definition"
* rest.resource[=].searchParam[+].name = "section-text"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Composition-section-text"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Search on the section narrative of the resource"
* rest.resource[=].searchParam[+].name = "entry"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Composition-entry"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "A reference to data that supports this section"
* rest.resource[=].searchParam[+].name = "related"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Composition-related"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Target of the relationship"
* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who and/or what the composition is about"
* rest.resource[=].searchParam[+].name = "context"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Composition-context"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Code(s) that apply to the event being documented"
* rest.resource[=].searchParam[+].name = "category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Composition-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Categorization of Composition"
* rest.resource[=].searchParam[+].name = "section-code-text"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Composition-section-code-text"
* rest.resource[=].searchParam[=].type = #composite
* rest.resource[=].searchParam[=].documentation = "Search on the section narrative of the resource"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Composition-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "preliminary | final | amended | entered-in-error"

* rest.resource[+].type = #Ingredient
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Ingredient"

* rest.resource[=].supportedProfile = "http://hl7.org/fhir/uv/vulcan-eproduct-info/StructureDefinition/Ingredient-uv-epi"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].referencePolicy[0] = #literal
* rest.resource[=].referencePolicy[+] = #logical
* rest.resource[=].searchInclude[0] = "Ingredient.substance-definition"
* rest.resource[=].searchInclude[+] = "Ingredient.substance"
* rest.resource[=].searchInclude[+] = "Ingredient.for"
* rest.resource[=].searchInclude[+] = "Ingredient.manufacturer"
* rest.resource[=].searchRevInclude = "RegulatedAuthorization.subject"
* rest.resource[=].searchParam[0].name = "substance-definition"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Ingredient-substance-definition"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Reference to a resource (by instance)"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Ingredient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "An identifier or code by which the ingredient can be referenced"
* rest.resource[=].searchParam[+].name = "role"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Ingredient-role"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A classification of the ingredient identifying its purpose within the product, e.g. active, inactive"
* rest.resource[=].searchParam[+].name = "function"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Ingredient-function"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A classification of the ingredient identifying its precise purpose(s) in the drug product. This extends the Ingredient.role to add more detail. Example: Antioxidant, Alkalizing Agent"
* rest.resource[=].searchParam[+].name = "substance"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Ingredient-substance"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Reference to a resource (by instance)"
* rest.resource[=].searchParam[+].name = "for"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Ingredient-for"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The product which this ingredient is a constituent part of"
* rest.resource[=].searchParam[+].name = "substance-code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Ingredient-substance-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Reference to a concept (by class)"
* rest.resource[=].searchParam[+].name = "manufacturer"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Ingredient-manufacturer"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The organization that manufactures this ingredient"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Ingredient-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The status of this ingredient. Enables tracking the life-cycle of the content"


* rest.resource[+].type = #ManufacturedItemDefinition
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/ManufacturedItemDefinition"

* rest.resource[=].supportedProfile = "http://hl7.org/fhir/uv/vulcan-eproduct-info/StructureDefinition/ManufacturedItemDefinition-uv-epi"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].referencePolicy[0] = #literal
* rest.resource[=].referencePolicy[+] = #logical
* rest.resource[=].searchRevInclude[0] = "AdministrableProductDefinition.manufactured-item"
* rest.resource[=].searchRevInclude[+] = "Ingredient.for"
* rest.resource[=].searchRevInclude[+] = "RegulatedAuthorization.subject"
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ManufacturedItemDefinition-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Unique identifier"
* rest.resource[=].searchParam[+].name = "ingredient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ManufacturedItemDefinition-ingredient"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "An ingredient of this item"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ManufacturedItemDefinition-name"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A descriptive name applied to this item"
* rest.resource[=].searchParam[+].name = "dose-form"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ManufacturedItemDefinition-dose-form"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Dose form as manufactured and before any transformation into the pharmaceutical product"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/ManufacturedItemDefinition-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The status of this item. Enables tracking the life-cycle of the content."


* rest.resource[+].type = #MedicinalProductDefinition
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/MedicinalProductDefinition"

* rest.resource[=].supportedProfile = "http://hl7.org/fhir/uv/vulcan-eproduct-info/StructureDefinition/MedicinalProductDefinition-uv-epi"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].referencePolicy[0] = #literal
* rest.resource[=].referencePolicy[+] = #logical
* rest.resource[=].searchInclude[0] = "MedicinalProductDefinition.master-file"
* rest.resource[=].searchInclude[+] = "MedicinalProductDefinition.contact"
* rest.resource[=].searchRevInclude[0] = "AdministrableProductDefinition.form-of"
* rest.resource[=].searchRevInclude[+] = "ClinicalUseDefinition.product"
* rest.resource[=].searchRevInclude[+] = "ClinicalUseDefinition.subject"
* rest.resource[=].searchRevInclude[+] = "Ingredient.for"
* rest.resource[=].searchRevInclude[+] = "PackagedProductDefinition.package-for"
* rest.resource[=].searchRevInclude[+] = "RegulatedAuthorization.subject"
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicinalProductDefinition-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Business identifier for this product. Could be an MPID"
* rest.resource[=].searchParam[+].name = "ingredient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicinalProductDefinition-ingredient"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "An ingredient of this product"
* rest.resource[=].searchParam[+].name = "master-file"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicinalProductDefinition-master-file"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "A master file for to the medicinal product (e.g. Pharmacovigilance System Master File)"
* rest.resource[=].searchParam[+].name = "contact"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicinalProductDefinition-contact"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "A product specific contact, person (in a role), or an organization"
* rest.resource[=].searchParam[+].name = "domain"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicinalProductDefinition-domain"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "If this medicine applies to human or veterinary uses"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicinalProductDefinition-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The full product name"
* rest.resource[=].searchParam[+].name = "name-language"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicinalProductDefinition-name-language"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Language code for this name"
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicinalProductDefinition-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Regulatory type, e.g. Investigational or Authorized"
* rest.resource[=].searchParam[+].name = "characteristic"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicinalProductDefinition-characteristic"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Allows the key product features to be recorded, such as \"sugar free\", \"modified release\", \"parallel import\""
* rest.resource[=].searchParam[+].name = "characteristic-type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicinalProductDefinition-characteristic-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A category for the characteristic"
* rest.resource[=].searchParam[+].name = "product-classification"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicinalProductDefinition-product-classification"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Allows the product to be classified by various systems"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/MedicinalProductDefinition-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The status within the lifecycle of this product record. A high-level status, this is not intended to duplicate details carried elsewhere such as legal status, or authorization status"


* rest.resource[+].type = #Organization
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Organization"

* rest.resource[=].supportedProfile = "http://hl7.org/fhir/uv/vulcan-eproduct-info/StructureDefinition/Organization-uv-epi"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].referencePolicy[0] = #literal
* rest.resource[=].referencePolicy[+] = #logical
* rest.resource[=].searchInclude[0] = "Organization.partof"
* rest.resource[=].searchInclude[+] = "Organization.endpoint"
* rest.resource[=].searchRevInclude[0] = "Account.owner"
* rest.resource[=].searchRevInclude[+] = "Account.patient"
* rest.resource[=].searchRevInclude[+] = "Account.subject"
* rest.resource[=].searchRevInclude[+] = "Account.guarantor"
* rest.resource[=].searchRevInclude[+] = "AllergyIntolerance.participant"
* rest.resource[=].searchRevInclude[+] = "AuditEvent.agent"
* rest.resource[=].searchRevInclude[+] = "AuditEvent.source"
* rest.resource[=].searchRevInclude[+] = "Basic.author"
* rest.resource[=].searchRevInclude[+] = "CarePlan.performer"
* rest.resource[=].searchRevInclude[+] = "CarePlan.custodian"
* rest.resource[=].searchRevInclude[+] = "CareTeam.participant"
* rest.resource[=].searchRevInclude[+] = "ChargeItem.performing-organization"
* rest.resource[=].searchRevInclude[+] = "ChargeItem.enterer"
* rest.resource[=].searchRevInclude[+] = "ChargeItem.performer-actor"
* rest.resource[=].searchRevInclude[+] = "ChargeItem.requesting-organization"
* rest.resource[=].searchRevInclude[+] = "Claim.care-team"
* rest.resource[=].searchRevInclude[+] = "Claim.payee"
* rest.resource[=].searchRevInclude[+] = "Claim.provider"
* rest.resource[=].searchRevInclude[+] = "Claim.insurer"
* rest.resource[=].searchRevInclude[+] = "Claim.facility"
* rest.resource[=].searchRevInclude[+] = "ClaimResponse.insurer"
* rest.resource[=].searchRevInclude[+] = "ClaimResponse.requestor"
* rest.resource[=].searchRevInclude[+] = "Communication.sender"
* rest.resource[=].searchRevInclude[+] = "Communication.recipient"
* rest.resource[=].searchRevInclude[+] = "CommunicationRequest.requester"
* rest.resource[=].searchRevInclude[+] = "CommunicationRequest.recipient"
* rest.resource[=].searchRevInclude[+] = "CommunicationRequest.information-provider"
* rest.resource[=].searchRevInclude[+] = "Composition.author"
* rest.resource[=].searchRevInclude[+] = "Composition.attester"
* rest.resource[=].searchRevInclude[+] = "Condition.participant-actor"
* rest.resource[=].searchRevInclude[+] = "Consent.controller"
* rest.resource[=].searchRevInclude[+] = "Consent.manager"
* rest.resource[=].searchRevInclude[+] = "Consent.grantee"
* rest.resource[=].searchRevInclude[+] = "Consent.actor"
* rest.resource[=].searchRevInclude[+] = "Contract.authority"
* rest.resource[=].searchRevInclude[+] = "Contract.signer"
* rest.resource[=].searchRevInclude[+] = "Coverage.insurer"
* rest.resource[=].searchRevInclude[+] = "Coverage.paymentby-party"
* rest.resource[=].searchRevInclude[+] = "Coverage.policy-holder"
* rest.resource[=].searchRevInclude[+] = "CoverageEligibilityRequest.provider"
* rest.resource[=].searchRevInclude[+] = "CoverageEligibilityResponse.insurer"
* rest.resource[=].searchRevInclude[+] = "CoverageEligibilityResponse.requestor"
* rest.resource[=].searchRevInclude[+] = "DetectedIssue.subject"
* rest.resource[=].searchRevInclude[+] = "DetectedIssue.patient"
* rest.resource[=].searchRevInclude[+] = "Device.organization"
* rest.resource[=].searchRevInclude[+] = "DeviceRequest.requester"
* rest.resource[=].searchRevInclude[+] = "DeviceRequest.performer"
* rest.resource[=].searchRevInclude[+] = "DiagnosticReport.performer"
* rest.resource[=].searchRevInclude[+] = "DiagnosticReport.subject"
* rest.resource[=].searchRevInclude[+] = "DiagnosticReport.patient"
* rest.resource[=].searchRevInclude[+] = "DiagnosticReport.results-interpreter"
* rest.resource[=].searchRevInclude[+] = "DocumentManifest.author"
* rest.resource[=].searchRevInclude[+] = "DocumentManifest.recipient"
* rest.resource[=].searchRevInclude[+] = "DocumentReference.custodian"
* rest.resource[=].searchRevInclude[+] = "DocumentReference.author"
* rest.resource[=].searchRevInclude[+] = "DocumentReference.attester"
* rest.resource[=].searchRevInclude[+] = "Encounter.service-provider"
* rest.resource[=].searchRevInclude[+] = "Endpoint.organization"
* rest.resource[=].searchRevInclude[+] = "EpisodeOfCare.organization"
* rest.resource[=].searchRevInclude[+] = "ExplanationOfBenefit.care-team"
* rest.resource[=].searchRevInclude[+] = "ExplanationOfBenefit.payee"
* rest.resource[=].searchRevInclude[+] = "ExplanationOfBenefit.provider"
* rest.resource[=].searchRevInclude[+] = "ExplanationOfBenefit.facility"
* rest.resource[=].searchRevInclude[+] = "Flag.author"
* rest.resource[=].searchRevInclude[+] = "Flag.patient"
* rest.resource[=].searchRevInclude[+] = "Flag.subject"
* rest.resource[=].searchRevInclude[+] = "GenomicStudy.analysis-patient"
* rest.resource[=].searchRevInclude[+] = "GenomicStudy.patient"
* rest.resource[=].searchRevInclude[+] = "GenomicStudy.subject"
* rest.resource[=].searchRevInclude[+] = "GenomicStudy.analysis-subject"
* rest.resource[=].searchRevInclude[+] = "Goal.patient"
* rest.resource[=].searchRevInclude[+] = "Goal.subject"
* rest.resource[=].searchRevInclude[+] = "Group.managing-entity"
* rest.resource[=].searchRevInclude[+] = "Group.member"
* rest.resource[=].searchRevInclude[+] = "HealthcareService.organization"
* rest.resource[=].searchRevInclude[+] = "ImagingSelection.subject"
* rest.resource[=].searchRevInclude[+] = "ImagingSelection.patient"
* rest.resource[=].searchRevInclude[+] = "ImagingStudy.performer"
* rest.resource[=].searchRevInclude[+] = "Immunization.performer"
* rest.resource[=].searchRevInclude[+] = "InsurancePlan.owned-by"
* rest.resource[=].searchRevInclude[+] = "InsurancePlan.administered-by"
* rest.resource[=].searchRevInclude[+] = "Invoice.issuer"
* rest.resource[=].searchRevInclude[+] = "Invoice.participant"
* rest.resource[=].searchRevInclude[+] = "Invoice.recipient"
* rest.resource[=].searchRevInclude[+] = "Linkage.author"
* rest.resource[=].searchRevInclude[+] = "List.patient"
* rest.resource[=].searchRevInclude[+] = "List.subject"
* rest.resource[=].searchRevInclude[+] = "List.source"
* rest.resource[=].searchRevInclude[+] = "Location.organization"
* rest.resource[=].searchRevInclude[+] = "MeasureReport.patient"
* rest.resource[=].searchRevInclude[+] = "MeasureReport.subject"
* rest.resource[=].searchRevInclude[+] = "MeasureReport.reporter"
* rest.resource[=].searchRevInclude[+] = "Medication.marketingauthorizationholder"
* rest.resource[=].searchRevInclude[+] = "MedicationDispense.performer"
* rest.resource[=].searchRevInclude[+] = "MedicationDispense.responsibleparty"
* rest.resource[=].searchRevInclude[+] = "MedicationRequest.requester"
* rest.resource[=].searchRevInclude[+] = "MedicationRequest.intended-dispenser"
* rest.resource[=].searchRevInclude[+] = "MedicationRequest.intended-performer"
* rest.resource[=].searchRevInclude[+] = "MedicationUsage.source"
* rest.resource[=].searchRevInclude[+] = "MedicinalProductDefinition.contact"
* rest.resource[=].searchRevInclude[+] = "MessageHeader.receiver"
* rest.resource[=].searchRevInclude[+] = "MessageHeader.sender"
* rest.resource[=].searchRevInclude[+] = "MessageHeader.responsible"
* rest.resource[=].searchRevInclude[+] = "MolecularSequence.subject"
* rest.resource[=].searchRevInclude[+] = "MolecularSequence.patient"
* rest.resource[=].searchRevInclude[+] = "NutritionIntake.source"
* rest.resource[=].searchRevInclude[+] = "Observation.subject"
* rest.resource[=].searchRevInclude[+] = "Observation.patient"
* rest.resource[=].searchRevInclude[+] = "Observation.performer"
* rest.resource[=].searchRevInclude[+] = "Organization.partof"
* rest.resource[=].searchRevInclude[+] = "OrganizationAffiliation.primary-organization"
* rest.resource[=].searchRevInclude[+] = "OrganizationAffiliation.network"
* rest.resource[=].searchRevInclude[+] = "OrganizationAffiliation.participating-organization"
* rest.resource[=].searchRevInclude[+] = "Patient.general-practitioner"
* rest.resource[=].searchRevInclude[+] = "Patient.organization"
* rest.resource[=].searchRevInclude[+] = "PaymentNotice.provider"
* rest.resource[=].searchRevInclude[+] = "PaymentReconciliation.payment-issuer"
* rest.resource[=].searchRevInclude[+] = "PaymentReconciliation.requestor"
* rest.resource[=].searchRevInclude[+] = "Person.organization"
* rest.resource[=].searchRevInclude[+] = "PractitionerRole.organization"
* rest.resource[=].searchRevInclude[+] = "Procedure.performer"
* rest.resource[=].searchRevInclude[+] = "Procedure.subject"
* rest.resource[=].searchRevInclude[+] = "Procedure.patient"
* rest.resource[=].searchRevInclude[+] = "Provenance.agent"
* rest.resource[=].searchRevInclude[+] = "QuestionnaireResponse.author"
* rest.resource[=].searchRevInclude[+] = "QuestionnaireResponse.source"
* rest.resource[=].searchRevInclude[+] = "RegulatedAuthorization.subject"
* rest.resource[=].searchRevInclude[+] = "RegulatedAuthorization.holder"
* rest.resource[=].searchRevInclude[+] = "RequestOrchestration.participant"
* rest.resource[=].searchRevInclude[+] = "ResearchStudy.site"
* rest.resource[=].searchRevInclude[+] = "ServiceRequest.requester"
* rest.resource[=].searchRevInclude[+] = "ServiceRequest.performer"
* rest.resource[=].searchRevInclude[+] = "SupplyDelivery.supplier"
* rest.resource[=].searchRevInclude[+] = "SupplyRequest.requester"
* rest.resource[=].searchRevInclude[+] = "SupplyRequest.subject"
* rest.resource[=].searchRevInclude[+] = "SupplyRequest.supplier"
* rest.resource[=].searchRevInclude[+] = "Task.owner"
* rest.resource[=].searchRevInclude[+] = "Task.requester"
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Any identifier for the organization (not the accreditation issuer's identifier)"
* rest.resource[=].searchParam[+].name = "partof"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-partof"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "An organization of which this organization forms a part"
* rest.resource[=].searchParam[+].name = "address"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-address"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A server defined search that may match any of the string fields in the Address, including line, city, district, state, country, postalCode, and/or text"
* rest.resource[=].searchParam[+].name = "address-state"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-address-state"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A state specified in an address"
* rest.resource[=].searchParam[+].name = "active"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-active"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Is the Organization record active"
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A code for the type of organization"
* rest.resource[=].searchParam[+].name = "address-postalcode"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-address-postalcode"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A postal code specified in an address"
* rest.resource[=].searchParam[+].name = "address-country"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-address-country"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A country specified in an address"
* rest.resource[=].searchParam[+].name = "endpoint"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-endpoint"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Technical endpoints providing access to services operated for the organization"
* rest.resource[=].searchParam[+].name = "phonetic"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-phonetic"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A portion of the organization's name using some kind of phonetic matching algorithm"
* rest.resource[=].searchParam[+].name = "address-use"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-address-use"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A use code specified in an address"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A portion of the organization's name or alias"
* rest.resource[=].searchParam[+].name = "address-city"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-address-city"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "A city specified in an address"


* rest.resource[+].type = #PackagedProductDefinition
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/PackagedProductDefinition"

* rest.resource[=].supportedProfile = "http://hl7.org/fhir/uv/vulcan-eproduct-info/StructureDefinition/PackagedProductDefinition-uv-epi"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].referencePolicy[0] = #literal
* rest.resource[=].referencePolicy[+] = #logical
* rest.resource[=].searchInclude[0] = "PackagedProductDefinition.manufactured-item"
* rest.resource[=].searchInclude[+] = "PackagedProductDefinition.nutrition"
* rest.resource[=].searchInclude[+] = "PackagedProductDefinition.package"
* rest.resource[=].searchInclude[+] = "PackagedProductDefinition.biological"
* rest.resource[=].searchInclude[+] = "PackagedProductDefinition.package-for"
* rest.resource[=].searchInclude[+] = "PackagedProductDefinition.contained-item"
* rest.resource[=].searchInclude[+] = "PackagedProductDefinition.medication"
* rest.resource[=].searchInclude[+] = "PackagedProductDefinition.device"
* rest.resource[=].searchRevInclude = "RegulatedAuthorization.subject"
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PackagedProductDefinition-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Unique identifier"
* rest.resource[=].searchParam[+].name = "manufactured-item"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PackagedProductDefinition-manufactured-item"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "A manufactured item of medication within this packaged product"
* rest.resource[=].searchParam[+].name = "nutrition"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PackagedProductDefinition-nutrition"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "A nutrition product within this packaged product"
* rest.resource[=].searchParam[+].name = "package"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PackagedProductDefinition-package"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "A complete packaged product within this packaged product"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PackagedProductDefinition-name"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A name for this package. Typically what it would be listed as in a drug formulary or catalogue, inventory etc"
* rest.resource[=].searchParam[+].name = "biological"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PackagedProductDefinition-biological"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "A biologically derived product within this packaged product"
* rest.resource[=].searchParam[+].name = "package-for"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PackagedProductDefinition-package-for"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The product that this is a pack for"
* rest.resource[=].searchParam[+].name = "contained-item"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PackagedProductDefinition-contained-item"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Any of the contained items within this packaged product"
* rest.resource[=].searchParam[+].name = "medication"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PackagedProductDefinition-medication"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "A manufactured item of medication within this packaged product"
* rest.resource[=].searchParam[+].name = "device"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PackagedProductDefinition-device"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "A device within this packaged product"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PackagedProductDefinition-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The status within the lifecycle of this item. A high level status, this is not intended to duplicate details carried elsewhere such as legal status, or authorization or marketing status"

* rest.resource[+].type = #RegulatedAuthorization
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/RegulatedAuthorization"

* rest.resource[=].supportedProfile = "http://hl7.org/fhir/uv/vulcan-eproduct-info/StructureDefinition/RegulatedAuthorization-uv-epi"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].referencePolicy[0] = #literal
* rest.resource[=].referencePolicy[+] = #logical
* rest.resource[=].searchInclude[0] = "RegulatedAuthorization.subject"
* rest.resource[=].searchInclude[+] = "RegulatedAuthorization.holder"
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/RegulatedAuthorization-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Business identifier for the authorization, typically assigned by the authorizing body"
* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/RegulatedAuthorization-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The type of regulated product, treatment, facility or activity that is being authorized"
* rest.resource[=].searchParam[+].name = "case-type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/RegulatedAuthorization-case-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The defining type of case"
* rest.resource[=].searchParam[+].name = "holder"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/RegulatedAuthorization-holder"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "The organization that holds the granted authorization"
* rest.resource[=].searchParam[+].name = "region"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/RegulatedAuthorization-region"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The territory (e.g., country, jurisdiction etc.) in which the authorization has been granted"
* rest.resource[=].searchParam[+].name = "case"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/RegulatedAuthorization-case"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The case or procedure number"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/RegulatedAuthorization-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The status that is authorised e.g. approved. Intermediate states can be tracked with cases and applications"

* rest.resource[+].type = #SubstanceDefinition
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/SubstanceDefinition"

* rest.resource[=].supportedProfile = "http://hl7.org/fhir/uv/vulcan-eproduct-info/StructureDefinition/SubstanceDefinition-uv-epi"
* rest.resource[=].supportedProfile.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].supportedProfile.extension.valueCode = #SHALL

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #vread
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #SHOULD
* rest.resource[=].interaction[=].code = #history-instance
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.resource[=].interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
* rest.resource[=].interaction[=].extension.valueCode = #MAY
* rest.resource[=].interaction[=].code = #history-type
* rest.resource[=].interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.resource[=].referencePolicy[0] = #literal
* rest.resource[=].referencePolicy[+] = #logical
* rest.resource[=].searchRevInclude = "RegulatedAuthorization.subject"
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/SubstanceDefinition-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifier by which this substance is known"
* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/SubstanceDefinition-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The specific code"
* rest.resource[=].searchParam[+].name = "domain"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/SubstanceDefinition-domain"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "If the substance applies to only human or veterinary use"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/SubstanceDefinition-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "The actual name"
* rest.resource[=].searchParam[+].name = "classification"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/SubstanceDefinition-classification"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "High or low level categorization, e.g. polymer vs. nucleic acid or linear vs. branch chain"

//System level interactions, search parameters and Operations
* rest.interaction[0].code = #transaction
* rest.interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.interaction[+].code = #batch
* rest.interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.interaction[+].code = #history-system
* rest.interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"
* rest.interaction[+].code = #search-system
* rest.interaction[=].documentation = "Implemented per the specification (or Insert other doco here)"

* rest.searchParam[+].name = "_id"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/id"
* rest.searchParam[=].type = #string
* rest.searchParam[=].documentation = "Searches on the server assigned id"

* rest.searchParam[+].name = "_list"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-list"
* rest.searchParam[=].type = #token
* rest.searchParam[=].documentation = "Retrieval of resources that are referenced by a List resource"

* rest.searchParam[+].name = "_has"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-has"
* rest.searchParam[=].type = #composite
* rest.searchParam[=].documentation = "Provides support for reverse chaining"

* rest.searchParam[+].name = "_type"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-type"
* rest.searchParam[=].type = #token
* rest.searchParam[=].documentation = "Type of resource (when doing cross-resource search"

* rest.searchParam[+].name = "_sort"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-source"
* rest.searchParam[=].type = #token
* rest.searchParam[=].documentation = "How to sort the resources when returning"

* rest.searchParam[+].name = "_count"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-count"
* rest.searchParam[=].type = #number
* rest.searchParam[=].documentation = "How many resources to return"

* rest.searchParam[+].name = "_include"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-include"
* rest.searchParam[=].type = #token
* rest.searchParam[=].documentation = "Control over returning additional resources (see spec)"

* rest.searchParam[+].name = "_revinclude"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-revinclude"
* rest.searchParam[=].type = #token
* rest.searchParam[=].documentation = "Control over returning additional resources (see spec)"


* rest.searchParam[+].name = "_elements"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-elements"
* rest.searchParam[=].type = #string
* rest.searchParam[=].documentation = "What kind of information to return"

* rest.searchParam[+].name = "_language"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-language"
* rest.searchParam[=].type = #token
* rest.searchParam[=].documentation = "Language of the resource content"

* rest.searchParam[+].name = "_in"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-in"
* rest.searchParam[=].type = #reference
* rest.searchParam[=].documentation = "Allows for the retrieval of resources that are active members of a CareTeam, Group, or List"

* rest.searchParam[+].name = "_lastUpdated"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-lastUpdated"
* rest.searchParam[=].type = #date
* rest.searchParam[=].documentation = "When the resource version last changed"

* rest.searchParam[+].name = "_profile"
* rest.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-profile"
* rest.searchParam[=].type = #reference
* rest.searchParam[=].documentation = "Profiles this resource claims to conform to"


* rest.operation[+].name = "meta"
* rest.operation[=].definition = "http://hl7.org/fhir/OperationDefinition/resource-meta"

* rest.operation[+].name = "filter"
* rest.operation[=].definition = "http://hl7.org/fhir/OperationDefinition/resource-filter"

* rest.operation[+].name = "document"
* rest.operation[=].definition = "http://hl7.org/fhir/OperationDefinition/composition-document"

* rest.operation[+].name = "find"
* rest.operation[=].definition = "http://hl7.org/fhir/OperationDefinition/list-find"

* rest.operation[+].name = "everything"
* rest.operation[=].definition = "http://hl7.org/fhir/OperationDefinition/medicinalproductdefinition-everything"
