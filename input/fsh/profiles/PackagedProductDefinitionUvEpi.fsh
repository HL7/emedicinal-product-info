Profile: PackagedProductDefinitionUvEpi
Parent: PackagedProductDefinition
Id: PackagedProductDefinition-uv-epi
Title: "PackagedProductDefinition (ePI)"
Description: "PackagedProductDefinition (ePI)"


* identifier 1..
  * system from VsPackagedProductIdSystems (extensible)
  * system 1..
  * value 1..
* name ^example.valueString = "3 ml cartridge (glass) in a pre-filled pen"

* type  ^example.valueCodeableConcept = $spor-rms#100000155527  "Chemical Medicinal Product"
//reference to EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* packageFor only Reference(MedicinalProductDefinitionUvEpi)

* status ^example.valueCodeableConcept = http://hl7.org/fhir/publication-status#active
* statusDate ^example.valueDateTime = "2015-02-07T13:28:17Z"

* containedItemQuantity ^example.valueQuantity.value = 3
* containedItemQuantity ^example.valueQuantity.unit = "ml"

* description ^example.valueString = "Type I colourless glass cartridge with a black plunger (bromobutyl rubber) and a flanged cap (aluminium) with inserted laminated sealing disks (bromobutyl rubber on the medicinal product side and polyisoprene on the outside) containing 3 ml of solution. Each cartridge is assembled into a disposable pen."

* legalStatusOfSupply ^short = "The legal status of supply of the packaged item as classified by the regulator."

* marketingStatus ^short = "Allows specifying that an item is on the market for sale, or that it is not available, and the dates and locations associated."

* copackagedIndicator ^short = "If the drug product is supplied with another item such as a diluent"  // = false

 // Reference to Organization: Manufacturer
* manufacturer only Reference(OrganizationUvEpi)

* package.identifier 1..
  * system from VsPackagedProductIdSystems (extensible)
  * system 1..
  * value 1..

* package.type ^example.valueCodeableConcept = $spor-rms#100000073543 "Pre-filled pen"

* package.quantity ^example.valueInteger = 3

* package.material ^example.valueCodeableConcept = $spor-rms#200000003204  "Glass type I"


// * package.shelfLifeStorage ^short = "Shelf Life and storage information."
* package.containedItem.item only Reference(ManufacturedItemDefinitionUvEpi or DeviceDefinition or PackagedProductDefinitionUvEpi or BiologicallyDerivedProduct or NutritionProduct) 
* package.package ^short = "Allows containers (and parts of containers) within containers, still a single packaged product."



