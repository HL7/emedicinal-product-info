Profile: RegulatedAuthorizationUvEpi
Parent: RegulatedAuthorization
Id: RegulatedAuthorization-uv-epi
Title: "RegulatedAuthorization (ePI)"
Description: "RegulatedAuthorization (ePI)"

* identifier 1..
  * system from VsRegulatedAuthIdSystems (extensible)
  * system 1..
  * value 1..
  * ^short = "Identifier assigned by the health authority to a single medicinal product"
  
 // Reference to MedicinalProductDefinition: EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* subject 1..
* subject only Reference(MedicinalProductDefinitionUvEpi)

* type from VsRegulatedAuthorizationTypeIdSystems (extensible)

* description ^short = "Brief description of the authorization"

* region ^short = "The jusrisdiction in which the authorization has been granted"// = urn:iso:std:iso:3166#eu "European Union" use http://unstats.un.org/unsd/methods/m49/m49.htm#150 for europe

* status ^short = "The current status of this authorization"
* status ^example.valueCodeableConcept = http://hl7.org/fhir/publication-status#active
* statusDate ^example.valueDateTime = "2015-02-07T13:28:17Z"

// * indication only Reference (ClinicalUseDefinitionIndicationUvEpi)
* indication.reference 1..
* indication.reference only Reference (ClinicalUseDefinitionIndicationUvEpi)
* indication.reference ^short = "Reference to the "

 // Reference to Organization: Marketing Authorization Holder
* holder 1..
* holder only Reference(OrganizationUvEpi)

* regulator only Reference(OrganizationUvEpi)

* case ^short = "The regulatory procedure for granting or amending a regulated authorization." 