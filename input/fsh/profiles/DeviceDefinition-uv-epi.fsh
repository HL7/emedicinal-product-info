Profile: DeviceDefinitionUvEpi
Parent: DeviceDefinition
Id: DeviceDefinition-uv-epi
Title: "DeviceDefinition (ePI)"
Description: "A device supplied in the package with the medicinal product (e.g., oral syringe, measuring spoon, inhaler)."
// Lock-down: references to resources that have an ePI profile point to that profile; target types without an ePI profile are kept.
* manufacturer only Reference(OrganizationUvEpi)
* owner only Reference(OrganizationUvEpi)
* packaging.distributor.organizationReference only Reference(OrganizationUvEpi)
* hasPart.reference only Reference(DeviceDefinitionUvEpi)
* link.relatedDevice only CodeableReference(DeviceDefinitionUvEpi)
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
