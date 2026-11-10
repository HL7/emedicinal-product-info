RuleSet: PropertyRulesSet
// Physical characteristics of a ManufacturedItemDefinition or AdministrableProductDefinition.
// Inserted by both profiles so the property slices are defined in one place.
* property ^short = "Describe the physical characteristics of this item."
// Lock-down: the Binary target of property.value[x] points to the ePI Binary profile; the other value types are kept.
* property.value[x] only CodeableConcept or Quantity or date or boolean or markdown or Attachment or Reference(BinaryEpi)
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
* property[size].value[x] only Quantity
* property[size].valueQuantity ^short = "The measured size, with a UCUM unit (e.g., 12 mm)"

* property[image] ^short = "An image of the item, embedded as base64-encoded data"
* property[image].type = $epi-ig#image
* property[image].type.coding.code = #image
* property[image].value[x] only Attachment
* property[image].valueAttachment ^short = "The image, embedded as an attachment"
* property[image].valueAttachment.contentType 1..1
* property[image].valueAttachment.contentType ^short = "Mime type of the image (e.g., image/png, image/jpeg)"
* property[image].valueAttachment.data 1..1
* property[image].valueAttachment.data ^short = "The image data, base64-encoded"
* property[image].valueAttachment.url 0..0
* property[image].valueAttachment ^comment = "The image is embedded in this resource as base64 data. It is not a link to a Binary or to any other location."
* property[imprint] ^short = "The imprint on the item"
* property[imprint].type = http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-ig#imprint
* property[imprint].type.coding.code = #imprint
* property[imprint].value[x] only markdown

// Terminology bindings for the property values
* property[color].valueCodeableConcept from VsPropertyColor (example)
* property[flavor].valueCodeableConcept from VsPropertyFlavor (example)
* property[shape].valueCodeableConcept from VsPropertyShape (example)
* property[surfaceForm].valueCodeableConcept from VsPropertySurfaceForm (example)
