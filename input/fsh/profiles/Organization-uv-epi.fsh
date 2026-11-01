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
* identifier ^short = "Unique identifier for this organization recognized by the regulator"
* identifier ^definition = "Unique identifier for this organization recognized by the regulator, such as the organization identifier assigned in the regulator's master data system."
* name 1..
* name ^short = "Organization's legally recognized name in this jurisdiction"
* name ^definition = "The organization's legally recognized name in this jurisdiction. For example, the legal name of the marketing authorization holder or manufacturer referenced in the ePI content."
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
* contact.telecom[phone] ^short = "Organization's phone number (e.g., corporate contact or safety information line)"
* contact.telecom[email] ^short = "Organization's email address (e.g., corporate contact email)"
* contact.telecom[url] ^short = "Organization's website (e.g., corporate website)"
* contact.address MS
* contact.address.type 0..1
* contact.address.type ^short = "Type of address (postal, physical, both)"
* contact.address.text MS
* contact.address.text ^short = "Complete address as a single display string"
* contact.address.text ^definition = "The complete address as a single display string, for printing on labels, showing in a user interface, or mailing."
* contact.address.line MS
* contact.address.line ^short = "Street or delivery part of the address; one line element per address line"
* contact.address.line ^definition = "The street or delivery part of the address only (house number, street name, apartment, PO Box), with one line element for each address line. Keep these separate from city, state, postal code and country so that logistics systems, geocoders and address validation services can use the structured parts of the address."
* contact.address.city MS
* contact.address.city ^short = "Name of city or town"
* contact.address.district MS
* contact.address.district ^short = "District name (aka county)"
* contact.address.state 0..1
* contact.address.state ^short = "Sub-unit of country (state, region, province, prefecture)"
* contact.address.postalCode MS
* contact.address.postalCode ^short = "Postal code for area"
* contact.address.country 0..1
* contact.address.country ^short = "Country (ISO 3166 two-letter code recommended)"
