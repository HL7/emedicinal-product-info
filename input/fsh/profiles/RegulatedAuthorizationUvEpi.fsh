Profile: RegulatedAuthorizationUvEpi
Parent: RegulatedAuthorization
Id: RegulatedAuthorization-uv-epi
Title: "RegulatedAuthorization (ePI)"
Description: "RegulatedAuthorization (ePI)"

* identifier 1..
  // * system from VsRegulatedAuthorizationTypeIdSystems (extensible)
  * system 1..
  * value 1..
  * ^short = "Identifier assigned by the health authority to a single medicinal product"
  
 // Reference to MedicinalProductDefinition: EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* subject 1..
* subject only Reference(MedicinalProductDefinitionUvEpi)

* type

* description ^short = "Brief description of the authorization"

* region from VsCountry (preferred)

* status ^short = "The current status of this authorization"
* statusDate

// * indication only Reference (ClinicalUseDefinitionIndicationUvEpi)
* indication.reference 1..
* indication only Reference (ClinicalUseDefinitionIndicationUvEpi)
* indication ^short = "Reference to the Clinical Use Definition"

 // Reference to Organization: Marketing Authorization Holder
* holder 1..
* holder only Reference(OrganizationUvEpi)

* regulator only Reference(OrganizationUvEpi)

* case 
  * identifier
  * type
  * status
  * date[x]