Profile: ManufacturedItemDefinitionUvEpi
Parent: ManufacturedItemDefinition
Id: ManufacturedItemDefinition-uv-epi
Title: "ManufacturedItemDefinition (ePI)"
Description: "ManufacturedItemDefinition (ePI)"
* ^status = #active
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #brr
* identifier 1..
* identifier.system 1..
* identifier.value 1..
* status ^short = "draft|active|retired|unknown"
* name ^short = "A descriptive name given to this item."
* manufacturedDoseForm ^short = "Dose form as manufactured and before any transformation into the administrable form."
* manufacturedDoseForm from http://hl7.org/fhir/ValueSet/manufactured-dose-form (example)
* unitOfPresentation ^short = "The “real world” units in which the quantity of the manufactured item is described."
* unitOfPresentation from http://hl7.org/fhir/ValueSet/unit-of-presentation (example)
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
* property[color] ^short = "Colour of the item"
* property[color].type = http://terminology.hl7.org/CodeSystem/medicationknowledge-characteristic#color
* property[color].type.coding.code = #color
* property[color].value[x] only CodeableConcept
* property[flavor] ^short = "Flavour of the item"
* property[flavor].type = http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-ig#flavor
* property[flavor].type.coding.code = #flavor
* property[flavor].value[x] only CodeableConcept
* property[score] ^short = "Score of the item"
* property[score].type = http://terminology.hl7.org/CodeSystem/medicationknowledge-characteristic#scoring
* property[score].type.coding.code = #scoring
* property[score].value[x] only CodeableConcept
* property[shape] ^short = "Shape of the item"
* property[shape].type = http://terminology.hl7.org/CodeSystem/medicationknowledge-characteristic#shape
* property[shape].type.coding.code = #shape
* property[shape].value[x] only CodeableConcept
* property[surfaceForm] ^short = "Surface form of the item"
* property[surfaceForm].type = http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-ig#surfaceform
* property[surfaceForm].type.coding.code = #surfaceform
* property[surfaceForm].value[x] only CodeableConcept
* property[size] ^short = "Size of the item"
* property[size].type = http://terminology.hl7.org/CodeSystem/medicationknowledge-characteristic#size
* property[size].type.coding.code = #size
* property[size].value[x] only CodeableConcept
* property[image] ^short = "Image of the item"
* property[image].type = http://terminology.hl7.org/CodeSystem/medicationknowledge-characteristic#image
* property[image].type.coding.code = #image
* property[image].value[x] only CodeableConcept
* property[imprint] ^short = "Imprint on the item"
* property[imprint].type = http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-ig#imprint
* property[imprint].type.coding.code = #imprint
* property[imprint].value[x] only markdown
