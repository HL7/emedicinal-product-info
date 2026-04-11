Profile: OrganizationUvEpi
Parent: Organization
Id: Organization-uv-epi
Title: "Organization (ePI)"
Description: "Organization (ePI) - ported from OrganizationUvEpi"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier.system 1..1
* identifier.value 1..1
* name 1..
* name ^short = "Name used for the organization. For example, can include name in Japanese and English."
* alias MS
* alias ^short = "A list of alternate names that the organization is known as. For example, can include alias in Japanese and English."
* description MS

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
* contact.address MS
* contact.address.type 0..1
* contact.address.type ^short = "Type of address (postal, physical, both)"
* contact.address.text MS
* contact.address.text ^short = "Full text representation of the address"
* contact.address.line MS
* contact.address.line ^short = "Street name, number, direction & P.O. Box etc."
* contact.address.city MS
* contact.address.city ^short = "Name of city, town etc."
* contact.address.district MS
* contact.address.district ^short = "District name (aka county)"
* contact.address.state 0..1
* contact.address.state ^short = "Sub-unit of country (state, region, province)"
* contact.address.postalCode MS
* contact.address.postalCode ^short = "Postal code for area"
* contact.address.country 0..1
* contact.address.country ^short = "Country (e.g., can be ISO 3166 2 or 3 letter code)"
