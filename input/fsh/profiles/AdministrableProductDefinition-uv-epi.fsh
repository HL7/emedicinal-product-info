Profile: AdministrableProductDefinitionUvEpi
Parent: AdministrableProductDefinition
Id: AdministrableProductDefinition-uv-epi
Title: "AdministrableProductDefinition (ePI)"
Description: "AdministrableProductDefinition (ePI)"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier.system 1..1
* identifier.value 1..1
* status ^short = "draft | active | retired | unknown"
* formOf only Reference(MedicinalProductDefinition-uv-epi)
* administrableDoseForm.coding 1..1
* administrableDoseForm.coding.system 1..1
* administrableDoseForm.coding.code 1..1
* administrableDoseForm.coding.display 1..1
* unitOfPresentation.coding 1..1
* unitOfPresentation.coding.system 1..1
* unitOfPresentation.coding.code 1..1
* unitOfPresentation.coding.display 1..1
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
* property[color].type.coding 1..1
* property[color].type.coding.system 1..1
* property[color].type.coding.code 1..1
* property[color].type.coding.display 1..1
* property[color].value[x] only CodeableConcept
* property[color].valueCodeableConcept.coding 1..1
* property[color].valueCodeableConcept.coding.system 1..1
* property[color].valueCodeableConcept.coding.code 1..1
* property[color].valueCodeableConcept.coding.display 1..1

* property[flavor].type.coding 1..1
* property[flavor].type.coding.system 1..1
* property[flavor].type.coding.code 1..1
* property[flavor].type.coding.display 1..1
* property[flavor].value[x] only CodeableConcept
* property[flavor].valueCodeableConcept.coding 1..1
* property[flavor].valueCodeableConcept.coding.system 1..1
* property[flavor].valueCodeableConcept.coding.code 1..1
* property[flavor].valueCodeableConcept.coding.display 1..1

* property[score].type.coding 1..1
* property[score].type.coding.system 1..1
* property[score].type.coding.code 1..1
* property[score].type.coding.display 1..1
* property[score].value[x] only CodeableConcept
* property[score].valueCodeableConcept.coding 1..1
* property[score].valueCodeableConcept.coding.system 1..1
* property[score].valueCodeableConcept.coding.code 1..1
* property[score].valueCodeableConcept.coding.display 1..1

* property[shape].type.coding 1..1
* property[shape].type.coding.system 1..1
* property[shape].type.coding.code 1..1
* property[shape].type.coding.display 1..1
* property[shape].value[x] only CodeableConcept
* property[shape].valueCodeableConcept.coding 1..1
* property[shape].valueCodeableConcept.coding.system 1..1
* property[shape].valueCodeableConcept.coding.code 1..1
* property[shape].valueCodeableConcept.coding.display 1..1

* property[surfaceForm].type.coding 1..1
* property[surfaceForm].type.coding.system 1..1
* property[surfaceForm].type.coding.code 1..1
* property[surfaceForm].type.coding.display 1..1
* property[surfaceForm].value[x] only CodeableConcept
* property[surfaceForm].valueCodeableConcept.coding 1..1
* property[surfaceForm].valueCodeableConcept.coding.system 1..1
* property[surfaceForm].valueCodeableConcept.coding.code 1..1
* property[surfaceForm].valueCodeableConcept.coding.display 1..1

* property[size].type.coding 1..1
* property[size].type.coding.system 1..1
* property[size].type.coding.code 1..1
* property[size].type.coding.display 1..1
* property[size].value[x] only CodeableConcept
* property[size].valueCodeableConcept.coding 1..1
* property[size].valueCodeableConcept.coding.system 1..1
* property[size].valueCodeableConcept.coding.code 1..1
* property[size].valueCodeableConcept.coding.display 1..1

* property[image].type.coding 1..1
* property[image].type.coding.system 1..1
* property[image].type.coding.code 1..1
* property[image].type.coding.display 1..1
* property[image].value[x] only CodeableConcept
* property[image].valueCodeableConcept.coding 1..1
* property[image].valueCodeableConcept.coding.system 1..1
* property[image].valueCodeableConcept.coding.code 1..1
* property[image].valueCodeableConcept.coding.display 1..1
* property[imprint] ^short = "Imprint on the item"
* property[imprint].type = http://hl7.org/fhir/uv/emedicinal-product-info/CodeSystem/epi-ig#imprint
* property[imprint].type.coding.code = #imprint
* property[imprint].value[x] only markdown
* routeOfAdministration ^short = "The path by which the product is taken into or makes contact with the body."
* routeOfAdministration.code.coding 1..1
* routeOfAdministration.code.coding.system 1..1
* routeOfAdministration.code.coding.code 1..1
* routeOfAdministration.code.coding.display 1..1
