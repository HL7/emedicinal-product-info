Profile: RegulatedAuthorizationUvEpi
Parent: RegulatedAuthorization
Id: RegulatedAuthorization-uv-epi
Title: "RegulatedAuthorization (ePI)"
Description: "RegulatedAuthorization (ePI)"


* identifier 1..
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[=].path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    spor 0..* MS
* identifier[spor] ^short = "SPOR (Europe)"
* identifier[spor] ^definition = "EMA - SPOR product identifier" // to be reviewed
* identifier[spor].system = $spor-prod // to be reviewed
* identifier[spor].value ^short = "Marketing Authorisation" // to be reviewed
* identifier[spor].use = #official

 // Reference to MedicinalProductDefinition: EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* subject only Reference(MedicinalProductDefinition)

* type MS // = $spor#100000072062 "Marketing Authorisation"

* region MS // = urn:iso:std:iso:3166#eu "European Union" use http://unstats.un.org/unsd/methods/m49/m49.htm#150 for europe
* status MS // = http://hl7.org/fhir/publication-status#active
* statusDate MS // = "2015-02-07T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* holder 1..
* holder only Reference(OrganizationUvEpi)
