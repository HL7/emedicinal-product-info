Profile: RegulatedAuthorizationUvEpi
Parent: RegulatedAuthorization
Id: RegulatedAuthorization-uv-epi
Title: "RegulatedAuthorization (ePI)"
Description: "RegulatedAuthorization (ePI)"


* identifier 1..
  * system from VsRegulatedAuthIdSystems (extensible)
  * system 1..
  * value 1..
  
 // Reference to MedicinalProductDefinition: EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* subject only Reference(MedicinalProductDefinitionUvEpi)

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

// * indication only Reference (ClinicalUseDefinitionIndicationUvEpi)
* indication.reference 1..
* indication.reference only Reference (ClinicalUseDefinitionIndicationUvEpi)

 // Reference to Organization: Marketing Authorization Holder
* holder 1..
* holder only Reference(OrganizationUvEpi)

* regulator only Reference(OrganizationUvEpi)

* case ^short = "The case or regulatory procedure for granting or amending a regulated authorization." 