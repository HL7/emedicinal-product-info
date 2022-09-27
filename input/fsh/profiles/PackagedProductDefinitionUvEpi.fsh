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

* type  ^example.valueCodeableConcept = $spor-rms#100000155527  "Chemical Medicinal Product"
* type ^example.label = "type"
//reference to EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill

* packageFor only Reference(MedicinalProductDefinitionUvEpi)

* status ^example.valueCodeableConcept = http://hl7.org/fhir/publication-status#active
* status ^example.label = "status"
* statusDate ^example.valueDateTime = "2015-02-07T13:28:17Z"
* statusDate ^example.label = "statusDate"
* containedItemQuantity ^example.valueQuantity.value = 3
* containedItemQuantity ^example.valueQuantity.unit = "ml"
* containedItemQuantity ^example.label = "containedItemQuantity"

* description ^example.valueString = "Type I colourless glass cartridge with a black plunger (bromobutyl rubber) and a flanged cap (aluminium) with inserted laminated sealing disks (bromobutyl rubber on the medicinal product side and polyisoprene on the outside) containing 3 ml of solution. Each cartridge is assembled into a disposable pen."
* description ^example.label = "description"

* legalStatusOfSupply ^short = "The legal status of supply of the packaged item as classified by the regulator."

* marketingStatus ^short = "Allows specifying that an item is on the market for sale, or that it is not available, and the dates and locations associated."

* copackagedIndicator ^short = "If the drug product is supplied with another item such as a diluent"  // = false

 // Reference to Organization: Manufacturer
* manufacturer only Reference(OrganizationUvEpi)

* packaging
  * identifier 1..
    * system from VsPackagedProductIdSystems (extensible)
    * system 1..
    * value 1..
  * type from VsPackType (preferred)
    * ^example.valueCodeableConcept = $spor-rms#100000073543 "Pre-filled pen"
    * ^example.label = "type"
  * quantity 
    * ^example.valueInteger = 3
    * ^example.label = "quantity"
  * material from VsPackageMaterialIdSystems (extensible)
    * ^example.valueCodeableConcept = $spor-rms#200000003204  "Glass type I"
    * ^example.label = "material"
  * shelfLifeStorage 
    * ^short = "Shelf Life and storage information."
    * type from VsShelfLifeTypeIdSystems (extensible)
    * period[x]
      * periodDuration
      * periodString
    * specialPrecautionsForStorage from VsSpecialPrecautionsForStorageIdSystems (extensible)
  * manufacturer only Reference (OrganizationUvEpi)
  * containedItem
    * item only Reference(ManufacturedItemDefinitionUvEpi or DeviceDefinition) 
  * packaging ^short = "Allows containers (and parts of containers) within containers, still a single packaged product."



