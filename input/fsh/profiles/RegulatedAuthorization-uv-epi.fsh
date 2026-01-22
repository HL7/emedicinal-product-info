Profile: RegulatedAuthorizationUvEpi
Parent: RegulatedAuthorization
Id: RegulatedAuthorization-uv-epi
Title: "RegulatedAuthorization (ePI)"
Description: "RegulatedAuthorization (ePI)"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier.system 1..1
* identifier.value 1..1
* subject 1..
* subject only Reference(MedicinalProductDefinition-uv-epi or PackagedProductDefinition-uv-epi)
* type.coding 1..1
* type.coding.system 1..1
* type.coding.code 1..1
* type.coding.display 1..1
* status.coding 1..1
* status.coding.system 1..1
* status.coding.code 1..1
* status.coding.display 1..1
* statusDate ^short = "The date at which the current status was assigned."
* indication.concept.coding 1..1
* indication.concept.coding.system 1..1
* indication.concept.coding.code 1..1
* indication.concept.coding.display 1..1
* basis.coding 1..1
* basis.coding.system 1..1
* basis.coding.code 1..1
* basis.coding.display 1..1
* holder 1..
* holder only Reference(Organization-uv-epi)
* regulator only Reference(Organization-uv-epi)
* case ^short = "The case or regulatory procedure for granting or amending a regulated authorization."
* case.identifier.system 1..1
* case.identifier.value 1..1
* case.type.coding 1..1
* case.type.coding.system 1..1
* case.type.coding.code 1..1
* case.type.coding.display 1..1
* case.status.coding 1..1
* case.status.coding.system 1..1
* case.status.coding.code 1..1
* case.status.coding.display 1..1
