Profile: RegulatedAuthorizationUvEpi
Parent: RegulatedAuthorization
Id: RegulatedAuthorization-uv-epi
Title: "RegulatedAuthorization (ePI)"
Description: "RegulatedAuthorization (ePI)"

* identifier 1..
  * system from VsRegulatedAuthorization (extensible)
  * system 1..
  * value 1..
  * ^short = "Identifier assigned by the health authority to a single medicinal product"
  
 // Reference to MedicinalProductDefinition: EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* subject 1..
* subject only Reference(MedicinalProductDefinitionUvEpi)

* type from VsRegulatedAuthorizationTypeIdSystems (extensible)

* description ^short = "Brief description of the authorization"

* region from VsJurisdiction (preferred)
  * ^short = "The jusrisdiction in which the authorization has been granted"

* status from VsAuthorizationStatus (preferred)
  * ^short = "The current status of this authorization"

// * indication only Reference (ClinicalUseDefinitionIndicationUvEpi)
* indication.reference 1..
* indication.reference only Reference (ClinicalUseDefinitionIndicationUvEpi)
* indication.reference ^short = "Reference to the "

 // Reference to Organization: Marketing Authorization Holder
* holder 1..
* holder only Reference(OrganizationUvEpi)

* regulator only Reference(OrganizationUvEpi)

* case 
  * ^short = "The regulatory procedure for granting or amending a regulated authorization." 
  * identifier
    * system from VsCaseIdSystem (preferred)
  * status from VsGeneralStatus (preferred)
  * type from VsRegulatoryActivityType (preferred)
  * date[x]