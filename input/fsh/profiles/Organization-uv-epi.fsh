Profile: OrganizationUvEpi
Parent: Organization
Id: Organization-uv-epi
Title: "Organization (ePI)"
Description: "Organization (ePI) - ported from OrganizationUvEpi"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier.system 1..
* identifier.value 1..
* name 1..
* contact.telecom ^slicing.discriminator.type = #value
* contact.telecom ^slicing.discriminator.path = "system"
* contact.telecom ^slicing.rules = #open
* contact.telecom contains phone 0..1 and email 0..1 and url 0..1
* contact.telecom[phone].system = #phone
* contact.telecom[phone].value 1..
* contact.telecom[email].system = #email
* contact.telecom[email].value 1..
* contact.telecom[url].system = #url
* contact.telecom[url].value 1..
* contact.address 0..1
