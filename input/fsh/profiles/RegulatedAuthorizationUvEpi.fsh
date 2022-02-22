Profile: RegulatedAuthorizationUvEpi
Parent: RegulatedAuthorization
Id: RegulatedAuthorization-uv-epi
Title: "RegulatedAuthorization (ePI)"
Description: "RegulatedAuthorization (ePI)"


* identifier 1..
  * system from VsRegulatedAuthIdSystems (extensible)
  * system 1..
  * value 1..
  
  
/*===
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
=== */


 // Reference to MedicinalProductDefinition: EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* subject only Reference(MedicinalProductDefinition)

// * type  // = $spor#100000072062 "Marketing Authorisation"
// CHANGE TO A VALUE SET BASED DISCRIMINATOR
* type.coding ^slicing.discriminator[0].type = #value
* type.coding ^slicing.discriminator[=].path = "system"
* type.coding ^slicing.rules = #open
* type.coding contains
    spor 0..* 
* type.coding[spor] ^short = "SPOR (Europe)"
* type.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
* type.coding[spor].system = $spor // to be reviewed
* type.coding[spor].code 1.. 


* description ^short = "General supporting information (textual)"

* region ^short = "The jusrisdiction in which the authorization has been granted"// = urn:iso:std:iso:3166#eu "European Union" use http://unstats.un.org/unsd/methods/m49/m49.htm#150 for europe

* status ^example.valueCodeableConcept = http://hl7.org/fhir/publication-status#active
* statusDate ^example.valueDateTime = "2015-02-07T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* holder 1..
* holder only Reference(OrganizationUvEpi)

* regulator only Reference(OrganizationUvEpi)