Profile: ManufacturedItemDefinitionUvEpi
Parent: ManufacturedItemDefinition
Id: ManufacturedItemDefinition-uv-epi
Title: "ManufacturedItemDefinition (ePI)"
Description: "Describes the product as the dose form in its primary packaging and before any necessary transformation (e.g., powder for solution)."
* ^status = #active
* . ^short = "Describes the product as the dose form in its primary packaging and before any necessary transformation (e.g., powder for solution)"
* . ^definition = "Describes the product as the dose form in its primary packaging and before any necessary transformation (e.g., powder for solution)."
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier ^short = "The unique identifier or code for this manufactured item"
* status ^short = "draft|active|retired|unknown"
* name ^short = "A descriptive name given to this item."
* manufacturedDoseForm ^short = "Dose form in the primary packaging and before any necessary transformations"
* manufacturedDoseForm.coding 1..1
* manufacturedDoseForm.coding.system 1..1
* manufacturedDoseForm.coding.code 1..1
* manufacturedDoseForm.coding.display 1..1
* unitOfPresentation ^short = "The units used to count the quantity of manufactured items (e.g., tablet, capsule, vial, bottle)"
* unitOfPresentation.coding 1..1
* unitOfPresentation.coding.system 1..1
* unitOfPresentation.coding.code 1..1
* unitOfPresentation.coding.display 1..1
* manufacturer only Reference(Organization-uv-epi)
* property ^short = "Describe the physical characteristics of this item."
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type.coding.code"
* property ^slicing.rules = #open
* property contains
    color 0..* and
    flavor 0..* and
    score 0..* and
    shape 0..* and
    surfaceForm 0..* and
    size 0..* and
    image 0..* and
    imprint 0..*
* property[color] ^short = "The color of the item"
* property[color].type = $epi-ig#color
* property[color].type.coding.code = #color
* property[color].value[x] only CodeableConcept
* property[color].valueCodeableConcept.coding 1..1
* property[color].valueCodeableConcept.coding.system 1..1
* property[color].valueCodeableConcept.coding.code 1..1
* property[color].valueCodeableConcept.coding.display 1..1

* property[flavor] ^short = "The flavor of the item"
* property[flavor].type = $epi-ig#flavor
* property[flavor].type.coding.code = #flavor
* property[flavor].value[x] only CodeableConcept
* property[flavor].valueCodeableConcept.coding 1..1
* property[flavor].valueCodeableConcept.coding.system 1..1
* property[flavor].valueCodeableConcept.coding.code 1..1
* property[flavor].valueCodeableConcept.coding.display 1..1

* property[score] ^short = "The score (break line) on the item"
* property[score].type = $epi-ig#score
* property[score].type.coding.code = #score
* property[score].value[x] only CodeableConcept
* property[score].valueCodeableConcept.coding 1..1
* property[score].valueCodeableConcept.coding.system 1..1
* property[score].valueCodeableConcept.coding.code 1..1
* property[score].valueCodeableConcept.coding.display 1..1

* property[shape] ^short = "The shape of the item"
* property[shape].type = $epi-ig#shape
* property[shape].type.coding.code = #shape
* property[shape].value[x] only CodeableConcept
* property[shape].valueCodeableConcept.coding 1..1
* property[shape].valueCodeableConcept.coding.system 1..1
* property[shape].valueCodeableConcept.coding.code 1..1
* property[shape].valueCodeableConcept.coding.display 1..1

* property[surfaceForm] ^short = "The surface form of the item"
* property[surfaceForm].type = $epi-ig#surfaceform
* property[surfaceForm].type.coding.code = #surfaceform
* property[surfaceForm].value[x] only CodeableConcept
* property[surfaceForm].valueCodeableConcept.coding 1..1
* property[surfaceForm].valueCodeableConcept.coding.system 1..1
* property[surfaceForm].valueCodeableConcept.coding.code 1..1
* property[surfaceForm].valueCodeableConcept.coding.display 1..1

* property[size] ^short = "The size of the item"
* property[size].type = $epi-ig#size
* property[size].type.coding.code = #size
* property[size].value[x] only CodeableConcept
* property[size].valueCodeableConcept.coding 1..1
* property[size].valueCodeableConcept.coding.system 1..1
* property[size].valueCodeableConcept.coding.code 1..1
* property[size].valueCodeableConcept.coding.display 1..1

* property[image] ^short = "An image of the item, embedded as base64-encoded data"
* property[image].type = $epi-ig#image
* property[image].type.coding.code = #image
* property[image].value[x] only Attachment
* property[image].valueAttachment ^short = "The image, embedded as an attachment"
* property[image].valueAttachment.contentType 1..1
* property[image].valueAttachment.contentType ^short = "Mime type of the image (e.g., image/png, image/jpeg)"
* property[image].valueAttachment.data 1..1
* property[image].valueAttachment.data ^short = "The image data, base64-encoded"
* property[imprint] ^short = "The imprint on the item"
* property[imprint].type = http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-ig#imprint
* property[imprint].type.coding.code = #imprint
* property[imprint].value[x] only markdown
