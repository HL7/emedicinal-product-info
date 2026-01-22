Profile: PackagedProductDefinitionUvEpi
Parent: PackagedProductDefinition
Id: PackagedProductDefinition-uv-epi
Title: "PackagedProductDefinition (ePI)"
Description: "PackagedProductDefinition (ePI)"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier.system 1..1
* identifier.value 1..1
* type.coding 1..1
* type.coding.system 1..1
* type.coding.code 1..1
* type.coding.display 1..1
* name ^short = "A name for this package. "
* type ^short = "A high level category e.g., medicinal product pack, sample pack, shipping container."
* packageFor only Reference(MedicinalProductDefinition-uv-epi)
* status.coding 1..1
* status.coding.system 1..1
* status.coding.code 1..1
* status.coding.display 1..1
* statusDate ^short = "The date at which the given status became applicable."
* containedItemQuantity ^short = "A count of the contained items."
* description ^short = "Narrative description of the overall pack; e.g., description of a sample pack"
* legalStatusOfSupply.code.coding 1..1
* legalStatusOfSupply.code.coding.system 1..1
* legalStatusOfSupply.code.coding.code 1..1
* legalStatusOfSupply.code.coding.display 1..1
* legalStatusOfSupply.jurisdiction.coding 1..1
* legalStatusOfSupply.jurisdiction.coding.system 1..1
* legalStatusOfSupply.jurisdiction.coding.code 1..1
* legalStatusOfSupply.jurisdiction.coding.display 1..1
* marketingStatus.country.coding 1..1
* marketingStatus.country.coding.system 1..1
* marketingStatus.country.coding.code 1..1
* marketingStatus.country.coding.display 1..1
* marketingStatus.status.coding 1..1
* marketingStatus.status.coding.system 1..1
* marketingStatus.status.coding.code 1..1
* marketingStatus.status.coding.display 1..1
* copackagedIndicator ^short = "If the drug product is supplied with another item such as a diluent or adjuvant."
* manufacturer only Reference(Organization-uv-epi)
* packaging ^short = "A packaging item, as a container for medically related items, possibly with other packaging items within."
* packaging.identifier.system 1..1
* packaging.identifier.value 1..1
* packaging.type.coding 1..1
* packaging.type.coding.system 1..1
* packaging.type.coding.code 1..1
* packaging.type.coding.display 1..1
* packaging.material.coding 1..1
* packaging.material.coding.system 1..1
* packaging.material.coding.code 1..1
* packaging.material.coding.display 1..1
* packaging.alternateMaterial.coding 1..1
* packaging.alternateMaterial.coding.system 1..1
* packaging.alternateMaterial.coding.code 1..1
* packaging.alternateMaterial.coding.display 1..1
* packaging.shelfLifeStorage.type.coding 1..1
* packaging.shelfLifeStorage.type.coding.system 1..1
* packaging.shelfLifeStorage.type.coding.code 1..1
* packaging.shelfLifeStorage.type.coding.display 1..1
* packaging.shelfLifeStorage.specialPrecautionsForStorage.coding 1..1
* packaging.shelfLifeStorage.specialPrecautionsForStorage.coding.system 1..1
* packaging.shelfLifeStorage.specialPrecautionsForStorage.coding.code 1..1
* packaging.shelfLifeStorage.specialPrecautionsForStorage.coding.display 1..1
* packaging.property.type.coding 1..1
* packaging.property.type.coding.system 1..1
* packaging.property.type.coding.code 1..1
* packaging.property.type.coding.display 1..1
* packaging.packaging ^short = "Nested packaging."
