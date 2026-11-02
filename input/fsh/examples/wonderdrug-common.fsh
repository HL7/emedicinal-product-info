// ============================================================================
// WonderDrug - shared resources used by the WonderDrug examples.
// SYNTHETIC: WonderDrug and WonderPharma are invented; the active substance
// (paracetamol) and the wording follow a typical SmPC.
// ============================================================================

Instance: org-wonderpharma
InstanceOf: OrganizationUvEpi
Usage: #example
Title: "Organization - WonderPharma Ltd."
Description: "WonderPharma Ltd., the marketing authorization holder for WonderDrug"
* identifier.system = $spor-oms
* identifier.value = "ORG-100000001"
* active = true
* type = $spor-rms#220000000034 "Marketing authorisation holder"
* name = "WonderPharma Ltd."
* contact.telecom[phone].system = #phone
* contact.telecom[phone].value = "+353 1 000 0000"
* contact.telecom[email].system = #email
* contact.telecom[email].value = "medinfo@wonderpharma.example.com"
* contact.telecom[url].system = #url
* contact.telecom[url].value = "https://www.wonderpharma.example.com"
* contact.address.type = #both
* contact.address.text = "WonderPharma Ltd., 1 Example Street, Dublin 2, D02 X123, Ireland"
* contact.address.line = "1 Example Street"
* contact.address.city = "Dublin"
* contact.address.postalCode = "D02 X123"
* contact.address.country = "IE"


Instance: tablet-image
InstanceOf: BinaryEpi
Usage: #inline
* contentType = #image/png
* data = "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mP8z8BQDwAEhQGAhKmMIQAAAABJRU5ErkJggg=="

Instance: substancedefinition-paracetamol
InstanceOf: SubstanceDefinitionUvEpi
Usage: #example
Title: "SubstanceDefinition - Paracetamol"
Description: "Paracetamol, the active substance of the WonderDrug products"
* identifier.system = $ginas
* identifier.value = "362O9ITL9D"
* status = $publication-status#active "Active"
* structure.molecularFormula = "C8H9NO2"
* molecularWeight.amount = 151.16 'g/mol' "g/mol"
* name[0].name = "Paracetamol"
* name[=].language = urn:ietf:bcp:47#en "English"
* name[+].name = "Acetaminophen"
* name[=].language = urn:ietf:bcp:47#en "English"
