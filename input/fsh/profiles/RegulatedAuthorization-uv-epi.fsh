Profile: RegulatedAuthorizationUvEpi
Parent: RegulatedAuthorization
Id: RegulatedAuthorization-uv-epi
Title: "RegulatedAuthorization (ePI)"
Description: "RegulatedAuthorization (ePI)"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier ^short = "The unique identifier for this authorization (e.g., marketing authorization number)"
* subject 1..
* subject only Reference(MedicinalProductDefinition-uv-epi or PackagedProductDefinition-uv-epi)
* subject ^short = "The medicinal product or package that is being authorized"
* type ^short = "The type of authorization (e.g., marketing authorization)"
* description ^short = "General textual supporting information"
* region ^short = "The territory in which the authorization has been granted"
* status ^short = "The status that is authorized (e.g., approved, withdrawn)"
* statusDate ^short = "The date at which the current status was assigned."
* validityPeriod ^short = "The time period in which the regulatory approval, clearance or licensing is in effect"
* indication only CodeableReference(ClinicalUseDefinition-indication-uv-epi)
* indication ^short = "The condition or disease that this authorization is for"
* indication ^comment = "Use only when the indication is carried as a ClinicalUseDefinition (Indication) in the same Bundle (ePI Type 3). Otherwise leave this empty and give the authorized indication as text in MedicinalProductDefinition.indication."
* intendedUse ^short = "The intended use of the product (e.g., prevention, treatment)"
* basis ^short = "The legal or regulatory framework under which this authorization is granted (e.g., full application, generic application)"
* holder 1..
* holder only Reference(Organization-uv-epi)
* holder ^short = "The organization that has been granted this authorization (the marketing authorization holder)"
* regulator only Reference(Organization-uv-epi)
* regulator ^short = "The regulatory authority that grants the authorization"
* attachedDocument ^short = "Additional information or supporting documentation about the authorization"
* case ^short = "The case or regulatory procedure for granting or amending a regulated authorization."
* case.identifier ^short = "The identifier for the regulatory case or procedure (e.g., procedure number)"
* case.type ^short = "The defining type of case (e.g., initial application, variation, renewal)"
* case.status ^short = "The status associated with the case"
* case.date[x] ^short = "Relevant date for this case, as a single date or a period"
* case.application ^short = "Applications submitted to obtain a regulated authorization, as steps within the case"
