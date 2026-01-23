Profile: ManufacturedItemDefinitionUvEpi
Parent: ManufacturedItemDefinition
Id: ManufacturedItemDefinition-uv-epi
Title: "ManufacturedItemDefinition (ePI)"
Description: "ManufacturedItemDefinition (ePI)"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier.system 1..1
* identifier.value 1..1
* status ^short = "draft|active|retired|unknown"
* name ^short = "A descriptive name given to this item."
* manufacturedDoseForm.coding 1..1
* manufacturedDoseForm.coding.system 1..1
* manufacturedDoseForm.coding.code 1..1
* manufacturedDoseForm.coding.display 1..1
* unitOfPresentation.coding 1..1
* unitOfPresentation.coding.system 1..1
* unitOfPresentation.coding.code 1..1
* unitOfPresentation.coding.display 1..1
* manufacturer only Reference(Organization-uv-epi)
* property ^short = "General characteristics of this item."
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
* property[color].type = $epi-ig#color
* property[color].type.coding.code = #color
* property[color].value[x] only CodeableConcept
* property[color].valueCodeableConcept.coding 1..1
* property[color].valueCodeableConcept.coding.system 1..1
* property[color].valueCodeableConcept.coding.code 1..1
* property[color].valueCodeableConcept.coding.display 1..1

* property[flavor].type = $epi-ig#flavor
* property[flavor].type.coding.code = #flavor
* property[flavor].value[x] only CodeableConcept
* property[flavor].valueCodeableConcept.coding 1..1
* property[flavor].valueCodeableConcept.coding.system 1..1
* property[flavor].valueCodeableConcept.coding.code 1..1
* property[flavor].valueCodeableConcept.coding.display 1..1

* property[score].type = $epi-ig#score
* property[score].type.coding.code = #score
* property[score].value[x] only CodeableConcept
* property[score].valueCodeableConcept.coding 1..1
* property[score].valueCodeableConcept.coding.system 1..1
* property[score].valueCodeableConcept.coding.code 1..1
* property[score].valueCodeableConcept.coding.display 1..1

* property[shape].type = $epi-ig#shape
* property[shape].type.coding.code = #shape
* property[shape].value[x] only CodeableConcept
* property[shape].valueCodeableConcept.coding 1..1
* property[shape].valueCodeableConcept.coding.system 1..1
* property[shape].valueCodeableConcept.coding.code 1..1
* property[shape].valueCodeableConcept.coding.display 1..1

* property[surfaceForm].type = $epi-ig#surfaceform
* property[surfaceForm].type.coding.code = #surfaceform
* property[surfaceForm].value[x] only CodeableConcept
* property[surfaceForm].valueCodeableConcept.coding 1..1
* property[surfaceForm].valueCodeableConcept.coding.system 1..1
* property[surfaceForm].valueCodeableConcept.coding.code 1..1
* property[surfaceForm].valueCodeableConcept.coding.display 1..1

* property[size].type = $epi-ig#size
* property[size].type.coding.code = #size
* property[size].value[x] only CodeableConcept
* property[size].valueCodeableConcept.coding 1..1
* property[size].valueCodeableConcept.coding.system 1..1
* property[size].valueCodeableConcept.coding.code 1..1
* property[size].valueCodeableConcept.coding.display 1..1

* property[image].type = $epi-ig#image
* property[image].type.coding.code = #image
* property[image].value[x] only CodeableConcept
* property[image].valueCodeableConcept.coding 1..1
* property[image].valueCodeableConcept.coding.system 1..1
* property[image].valueCodeableConcept.coding.code 1..1
* property[image].valueCodeableConcept.coding.display 1..1
* property[imprint] ^short = "Imprint on the item"
* property[imprint].type = http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-ig#imprint
* property[imprint].type.coding.code = #imprint
* property[imprint].value[x] only markdown
