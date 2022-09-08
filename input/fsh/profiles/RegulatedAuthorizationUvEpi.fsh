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
* type.coding[spor] ^short = "Type of authorization"
* type.coding[spor] ^definition = "The type of regulatory authorization under which the medicinal product(s) are approved for sale in the country or region."
* type.coding[spor].system = $spor // to be reviewed
* type.coding[spor].code 1.. 

* description ^short = "Brief description of the authorization"

* region ^short = "The jusrisdiction in which the authorization has been granted"

* status ^short = "The current status of this authorization"
* status ^example.valueCodeableConcept = http://hl7.org/fhir/publication-status#active
* statusDate ^example.valueDateTime = "2015-02-07T13:28:17Z"

// * indication only Reference (ClinicalUseDefinitionIndicationUvEpi)
* indication.reference 1..
* indication.reference only Reference (ClinicalUseDefinitionIndicationUvEpi)
* indication.reference ^short = "Cross reference to the authorized indications for this authorization and medicinal product. "

* holder 1..
* holder only Reference(OrganizationUvEpi) 
  * ^short = "Reference to the Marketing Authorization Holder named on the authorization"

* regulator only Reference(OrganizationUvEpi) 
  * ^short = "Reference to the health authority that issued this authorization"

* case ^short = "The regulatory procedure under which the authorization was granted or amended." 