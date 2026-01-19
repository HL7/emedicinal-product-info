Profile: RegulatedAuthorizationUvEpi
Parent: RegulatedAuthorization
Id: RegulatedAuthorization-uv-epi
Title: "RegulatedAuthorization (ePI)"
Description: "RegulatedAuthorization (ePI)"
* ^status = #active
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #brr
* identifier 1..
* identifier.system 1..
* identifier.value 1..
* subject 1..
* subject only Reference(MedicinalProductDefinition-uv-epi or PackagedProductDefinition-uv-epi)
* type 1..
* type ^short = "Overall type of this authorization, for example drug marketing approval, orphan drug designation."
* description ^short = "General textual supporting information."
* status 1..
* status ^short = "The current status of this authorization"
* statusDate ^short = "The date at which the current status was assigned."
* indication ^short = "The indication for which the indication is granted."
* basis ^short = "The legal/regulatory basis."
* holder 1..
* holder only Reference(Organization-uv-epi)
* regulator only Reference(Organization-uv-epi)
* case ^short = "The case or regulatory procedure for granting or amending a regulated authorization."
* case.identifier ^short = "Identifier by which this case can be referenced."
* case.type ^short = "The defining type of case."
* case.status ^short = "The status associated with the case."
