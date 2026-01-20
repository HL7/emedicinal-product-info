Profile: BinaryEpi
Parent: Binary
Id: binary-epi
Title: "Binary - ePI"
Description: "This profile represents the constraints applied to the Binary resource used in the ePI FHIR Implementation Guide. It enforces usage of contained base64 data."
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* contentType 1..
* securityContext 0..0
* data 1..
