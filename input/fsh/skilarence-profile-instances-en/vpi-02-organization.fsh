Profile: VPIOrganization
Parent: Organization
Id: ef262d35-9d2a-4d58-851a-2227a1f028d9
Title: "VPI Organization"
Description: "Vulcan medicinal product information profile and instance examples"


// Instance example of the MAH
Instance: ef262d35-9d2a-4d58-851a-2227a1f028d9
InstanceOf: organization
Usage: #example
* id = "ef262d35-9d2a-4d58-851a-2227a1f028d9"
* identifier.type = $spor.ema.europa.eu:220000000031#220000000034 "Marketing authorisation holder" //parent list is Organisation Role Type
* identifier.system = "https://spor.ema.europa.eu"
* identifier.value = "ORG-100011518"
* active = #true
* type = $hl7.org/fhir/ValueSet/organization-type#bus "Non-Healthcare Business or Corporation"
* name = "Almirall S.A."

* telecom.contactpoint.system = #phone
* telecom.contactpoint.value = "+34 93 291 30 00"

* address.type = #physical
* address.text = "Ronda General Mitre 15 
Barcelona 
08022 
Spain"
* address.line = "Ronda General Mitre 151"
* address.city = "Barcelona"
* address.state = "Barcelona"
* address.postalcode = "08022"
* address.country = $iso:3166-2#es "Spain"
