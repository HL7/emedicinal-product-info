Profile: BinaryEpi
Parent: Binary
Id: binary-epi
Title: "binary (ePI)"
Description: "This profile represents the constraints applied to the Binary resource used in the ePI FHIR Implementation Guide. It enforces usage of contained base64 data."
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* contentType 1..
* contentType ^short = "MimeType of the binary content (e.g., image/png, image/jpeg, image/svg+xml)"
* contentType ^definition = "MimeType of the binary content represented as a standard MIME type. This is used to clarify the image type being exchanged (e.g., SVG, PNG, JPEG)."
* securityContext 0..0
* data 1..
