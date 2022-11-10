Profile: PackagedProductDefinitionUvEpi
Parent: PackagedProductDefinition
Id: PackagedProductDefinition-uv-epi
Title: "PackagedProductDefinition (ePI)"
Description: "PackagedProductDefinition (ePI)"

* identifier 
  * system from VsPackagedProductIdSystems (extensible)
  * system 1..
  * value 1..

* name ^example.valueString = "3 ml cartridge (glass) in a pre-filled pen"
* name ^example.label = "name"

* type from VsPackageType (preferred)
  * ^short = "A high level category e.g., medicinal product pack, sample pack, shipping container."

* packageFor only Reference(MedicinalProductDefinitionUvEpi)

* status ^example.valueCodeableConcept = http://hl7.org/fhir/publication-status#active
* status ^example.label = "Example Status"
* statusDate ^example.valueDateTime = "2015-02-07T13:28:17Z"
* statusDate ^example.label = "statusDate"

* containedItemQuantity ^short = "Number of items in this overall pack"

* description ^short = "Narrative description of the overall pack; e.g., description of a sample pack"

* legalStatusOfSupply ^short = "The legal status of supply of the packaged item as classified by the regulator."
  * code from VsLegalStatusOfSupply (preferred)
  * jurisdiction from http://terminology.hl7.org/ValueSet/v3-Country2 (preferred) //VsCountry

* marketingStatus ^short = "Allows specifying that an item is on the market for sale, or that it is not available, and the dates and locations associated."
  * country from http://terminology.hl7.org/ValueSet/v3-Country2 (preferred) //VsCountry
  * status from VsMarketingStatus (preferred)
  * dateRange.start
  * dateRange.end
  * restoreDate

* copackagedIndicator ^short = "If the drug product is supplied with another item such as a diluent"  // = false

 // Reference to Organization: Manufacturer
* manufacturer only Reference(OrganizationUvEpi)

* packaging
  * identifier 1..
    * system from VsDataCarrierIdSystem (preferred)
    * system 1..
    * value 1..
  * type from VsSecondaryPrimaryPackType (preferred)
  * quantity 
  * material from VsPackageMaterial (preferred)
  * shelfLifeStorage 
    * ^short = "Shelf Life and storage information."
    * type from VsShelfLifeType (preferred)
    * periodDuration
      * value
      * unit
      * system
      * code from VsUnitofMeasure (preferred)

    * period[periodstring].period[x]
    * specialPrecautionsForStorage from VsSpecialPrecautionsForStorage (preferred)
  * manufacturer only Reference (OrganizationUvEpi)
  * containedItem
    * item only Reference (ManufacturedItemDefinitionUvEpi or DeviceDefinition) 
  * packaging ^short = "Used to nest layers of packaging; e.g., outside to inside with secondary package and then primary package)"



