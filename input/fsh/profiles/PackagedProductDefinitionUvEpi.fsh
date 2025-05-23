Profile: PackagedProductDefinitionUvEpi
Parent: PackagedProductDefinition
Id: PackagedProductDefinition-uv-epi
Title: "PackagedProductDefinition (ePI)"
Description: "PackagedProductDefinition (ePI)"
* insert SetFmmandStatusRule ( 2, trial-use )
* identifier 
  * system
  * system 1..
  * value 1..

* name 0..1

* type 0..1
  * ^short = "A high level category e.g., medicinal product pack, sample pack, shipping container."

* packageFor only Reference(MedicinalProductDefinitionUvEpi)

* status 0..1
  * ^short = "The status within the lifecycle of this item. High level - not intended to duplicate details elsewhere e.g. legal status, or authorization/marketing status"

* statusDate 0..1
  * ^example.label = "General"
  * ^example.valueDateTime = "2015-02-07T13:28:17Z"
  * ^example.label = "Example of a status date"

* containedItemQuantity 0..* 

* description ^short = "Narrative description of the overall pack; e.g., description of a sample pack"

* legalStatusOfSupply ^short = "The legal status of supply of the packaged item as classified by the regulator."
  * code 
    * ^short = "The actual status of supply. In what situation this package type may be supplied for use"
  * jurisdiction from VsCountry (preferred)

* marketingStatus 0..*
  * ^short = "Allows specifying that an item is on the market for sale, or that it is not available, and the dates and locations associated."
  * jurisdiction from VsCountry (preferred)
  * status 1..1
  * dateRange.start 0..1
  * dateRange.end 0..1
  * restoreDate 0..1

* copackagedIndicator ^short = "If the drug product is supplied with another item such as a diluent"

* manufacturer only Reference(OrganizationUvEpi)

* packaging
  * identifier 0..
    * system 1..
    * value 1..
  * type 0..1
  * quantity 0..1
  * material 0..1
  * shelfLifeStorage 
    * ^short = "Shelf Life and storage information."
    * type 0..1
    * periodDuration
      * value 0..1
      * unit 0..1
      * system 0..1
      * code 0..1
    * period[periodstring].period[x]
    * specialPrecautionsForStorage 0..*
  * manufacturer only Reference (OrganizationUvEpi)
  * containedItem
    * item only CodeableReference (ManufacturedItemDefinitionUvEpi or DeviceDefinition) 
  * packaging 0..*



