Profile: PackagedProductDefinitionUvEpi
Parent: PackagedProductDefinition
Id: PackagedProductDefinition-uv-epi
Title: "PackagedProductDefinition (ePI)"
Description: "PackagedProductDefinition (ePI)"
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* identifier 1..
* identifier ^short = "The unique identifier or code for this package as a whole, not for its contents (e.g., GTIN, national pack code)"
* name ^short = "The name for this marketed package presentation (e.g., Paracetamol 500 mg film-coated tablets, carton of 30)"
* type ^short = "The high-level category of the package (e.g., medicinal product pack, sample pack, hospital pack, shipping container)"
* type ^definition = "The high-level category of the package. A medicinal product pack is the package as marketed to the end user; a sample pack is supplied free of charge for promotional or trial use; a hospital pack is intended for supply to hospitals only; a shipping container is used for transport and is not supplied to the end user."
* packageFor only Reference(MedicinalProductDefinition-uv-epi)
* statusDate ^short = "The date at which the given status became applicable."
* containedItemQuantity ^short = "The pack size: the total number of each kind of item in the package, regardless of how it is subdivided (e.g., 30 tablets, 100 mL of oral solution)"
* description ^short = "Narrative description of the overall pack; e.g., description of a sample pack"
* copackagedIndicator ^short = "If the drug product is supplied with another item such as a diluent or adjuvant."
* manufacturer only Reference(Organization-uv-epi)
* manufacturer ^short = "Manufacturer or packaging site for this package (multiple means these are all possible manufacturers or pack sites)"
* packaging ^short = "A packaging item, as a container for medically related items, possibly with other packaging items within."
* packaging.shelfLifeStorage ^short = "Shelf life and storage information for this packaging item"
* packaging.shelfLifeStorage.period[x] ^short = "The shelf life time period, as a duration or as text"
* packaging.shelfLifeStorage.periodDuration ^short = "The shelf life time period as a duration (e.g., 36 months)"
* packaging.shelfLifeStorage.periodString ^short = "The shelf life time period as text, when it cannot be expressed as a duration (e.g., use within 28 days of opening)"
* packaging.shelfLifeStorage.specialPrecautionsForStorage ^short = "Special precautions for storage (e.g., store below 25 °C, do not freeze, keep in the original package to protect from light)"
* packaging.containedItem ^short = "The item(s) within this packaging"
* packaging.containedItem.item only CodeableReference(ManufacturedItemDefinition-uv-epi or DeviceDefinition-uv-epi or PackagedProductDefinition-uv-epi)
* packaging.containedItem.item ^short = "The manufactured item, device or package within this packaging"
* packaging.containedItem.amount ^short = "The number of this item within this packaging (e.g., 10 tablets)"
* packaging.packaging ^short = "Nested packaging."
* attachedDocument only Reference(DocumentReference)
* attachedDocument ^short = "Pack artwork images or other related documents associated with this package."

// Terminology bindings
* packaging.shelfLifeStorage.specialPrecautionsForStorage from VsSpecialPrecautionsForStorage (example)
