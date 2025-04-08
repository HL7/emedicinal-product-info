Profile: RegulatedAuthorizationUvEpi
Parent: RegulatedAuthorization
Id: RegulatedAuthorization-uv-epi
Title: "RegulatedAuthorization (ePI)"
Description: "RegulatedAuthorization (ePI)"
* insert SetFmmandStatusRule ( 2, trial-use )
* identifier 1..
  // * system from VsRegulatedAuthorizationTypeIdSystems (extensible)
  * system 1..
  * value 1..
  * ^short = "Identifier assigned by the health authority to a single medicinal product"
  
 // Reference to MedicinalProductDefinition: EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* subject 1..
* subject only Reference(MedicinalProductDefinitionUvEpi or PackagedProductDefinitionUvEpi)

* type 1..
  * ^short = "Overall type of this authorization, for example drug marketing approval, orphan drug designation."

* description ^short = "Brief description of the authorization"

* region from VsCountry (preferred)

* status 1..
  * ^short = "The current status of this authorization"
* statusDate ^short = "The date at which the current status was assigned."

// * indication only Reference (ClinicalUseDefinitionIndicationUvEpi)
* indication.reference 1..
* indication only CodeableReference (ClinicalUseDefinitionIndicationUvEpi)
* indication ^short = "Reference to the Clinical Use Definition"

 // Reference to Organization: Marketing Authorization Holder
* holder 1..
* holder only Reference(OrganizationUvEpi)

* regulator only Reference(OrganizationUvEpi)

* case 
  * identifier ^short = "Identifier by which this case can be referenced."
  * type ^short = "The defining type of case."
  * status ^short = "The status associated with the case."
  * date[x] ^short = "Relevant date for this case."
