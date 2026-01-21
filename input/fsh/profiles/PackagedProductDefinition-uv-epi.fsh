Profile: PackagedProductDefinitionUvEpi
Parent: PackagedProductDefinition
Id: PackagedProductDefinition-uv-epi
Title: "PackagedProductDefinition (ePI)"
Description: "PackagedProductDefinition (ePI)"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier.system 1..
* identifier.value 1..
* name ^short = "A name for this package. "
* type ^short = "A high level category e.g., medicinal product pack, sample pack, shipping container."
* packageFor only Reference(MedicinalProductDefinition-uv-epi)
* status ^short = "The status within the lifecycle of this item."
* statusDate ^short = "The date at which the given status became applicable."
* containedItemQuantity ^short = "A count of the contained items."
* description ^short = "Narrative description of the overall pack; e.g., description of a sample pack"
* legalStatusOfSupply ^short = "The legal status of supply of the packaged item as classified by the regulator."
* legalStatusOfSupply.code ^short = "The actual status of supply."
* legalStatusOfSupply.jurisdiction ^short = "The place where the legal status of supply applies."
* marketingStatus ^short = "Allows specifying that an item is on the market for sale, or that it is not available..."
* copackagedIndicator ^short = "If the drug product is supplied with another item such as a diluent or adjuvant."
* manufacturer only Reference(Organization-uv-epi)
* packaging ^short = "A packaging item, as a container for medically related items, possibly with other packaging items within."
* packaging.identifier ^short = "Business Identifier for this package."
* packaging.type ^short = "Type of container."
* packaging.componentPart ^short = "Is this a part of the packaging (e.g. a cap or bottle stopper), rather than the packaging itself."
* packaging.quantity ^short = "The quantity of this package in the packaged product."
* packaging.material ^short = "Material type of the package item."
* packaging.alternateMaterial ^short = "A possible alternate material for the packaging."
* packaging.shelfLifeStorage ^short = "Shelf Life and storage information."
* packaging.manufacturer only Reference(Organization-uv-epi)
* packaging.property ^short = "General characteristics of this item."
* packaging.property.type ^short = "Code that specifies the type of characteristic property."
* packaging.property.value[x] ^short = "Value of the characteristic."
* packaging.containedItem ^short = "The item(s) within the packaging."
* packaging.containedItem.item ^short = "The actual item(s) of medication, as manufactured, or a device, or other medically related item."
* packaging.containedItem.item only Reference(ManufacturedItemDefinition-uv-epi or PackagedProductDefinition-uv-epi or DeviceDefinition)
* packaging.containedItem.amount ^short = "The number of this type of item within this packaging."
* packaging.packaging ^short = "Nested packaging."
