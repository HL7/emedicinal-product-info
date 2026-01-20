Profile: AdministrableProductDefinitionUvEpi
Parent: AdministrableProductDefinition
Id: AdministrableProductDefinition-uv-epi
Title: "AdministrableProductDefinition (ePI)"
Description: "AdministrableProductDefinition (ePI)"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier.system 1..
* identifier.value 1..
* status ^short = "draft | active | retired | unknown"
* formOf only Reference(MedicinalProductDefinition-uv-epi)
* administrableDoseForm ^short = "The dose form of the final product after necessary reconstitution or processing."
* administrableDoseForm from http://hl7.org/fhir/ValueSet/administrable-dose-form (example)
* unitOfPresentation ^short = "The presentation type in which this item is given to a patient. e.g. for a spray - 'puff'."
* unitOfPresentation from http://hl7.org/fhir/ValueSet/unit-of-presentation (example)
* producedFrom only Reference(ManufacturedItemDefinition-uv-epi)
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
* property[color].value[x] only CodeableConcept
* property[flavor] ^short = "Flavour of the item"
* property[flavor].type = http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-ig#flavor
* property[flavor].value[x] only CodeableConcept
* property[score] ^short = "Score of the item"
* property[score].type = http://terminology.hl7.org/CodeSystem/medicationknowledge-characteristic#scoring
* property[score].value[x] only CodeableConcept
* property[shape] ^short = "Shape of the item"
* property[shape].type = http://terminology.hl7.org/CodeSystem/medicationknowledge-characteristic#shape
* property[shape].value[x] only CodeableConcept
* property[surfaceForm] ^short = "Surface form of the item"
* property[surfaceForm].type = http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-ig#surfaceform
* property[surfaceForm].value[x] only CodeableConcept
* property[size] ^short = "Size of the item"
* property[size].type = http://terminology.hl7.org/CodeSystem/medicationknowledge-characteristic#size
* property[size].value[x] only CodeableConcept
* property[image] ^short = "Image of the item"
* property[image].type = http://terminology.hl7.org/CodeSystem/medicationknowledge-characteristic#image
* property[image].value[x] only CodeableConcept
* property[imprint] ^short = "Imprint on the item"
* property[imprint].type = http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-ig#imprint
* property[imprint].value[x] only markdown
* routeOfAdministration ^short = "The path by which the product is taken into or makes contact with the body."
* routeOfAdministration.code ^short = "Coded expression for the route."
* routeOfAdministration.code from http://hl7.org/fhir/ValueSet/route-codes (example)
