Profile: PackagedProductDefinitionUvEpi
Parent: PackagedProductDefinition
Id: PackagedProductDefinition-uv-epi
Title: "PackagedProductDefinition (ePI)"
Description: "PackagedProductDefinition (ePI)"

//================






// === END


* identifier 1..
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[=].path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    spor 0..* MS
* identifier[spor] ^short = "SPOR (Europe)"
* identifier[spor] ^definition = "EMA - SPOR product identifier" // to be reviewed
* identifier[spor].system = $spor-prod // to be reviewed
* identifier[spor].value ^short = "EMA Package Product ID" // to be reviewed
* identifier[spor].use = #official


* name MS // = "3 ml cartridge (glass) in a pre-filled pen"

* type MS // = https://spor.ema.europa.eu/rmswi/#/#100000155527  "Chemical Medicinal Product"
// CHANGE TO A VALUE SET BASED DISCRIMINATOR
* type.coding ^slicing.discriminator[0].type = #value
* type.coding ^slicing.discriminator[=].path = "system"
* type.coding ^slicing.rules = #open
* type.coding contains
    spor 0..* MS
* type.coding[spor] ^short = "SPOR (Europe)"
* type.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
* type.coding[spor].system = $spor // to be reviewed
* type.coding[spor].code 1.. 

* status MS // = http://hl7.org/fhir/publication-status#active "Active"
* statusDate MS // = "2015-02-07T13:28:17Z"

* containedItemQuantity MS // .value = 3 .unit = "ml"

* description MS // = "Type I colourless glass cartridge with a black plunger (bromobutyl rubber) and a flanged cap (aluminium) with inserted laminated sealing disks (bromobutyl rubber on the medicinal product side and polyisoprene on the outside) containing 3 ml of solution. Each cartridge is assembled into a disposable pen."

* copackagedIndicator MS // = false

 // Reference to Organization: Manufacturer
* manufacturer only Reference(OrganizationUvEpi)

* package.identifier 1..

* package.identifier ^slicing.discriminator[0].type = #value
* package.identifier ^slicing.discriminator[=].path = "system"
* package.identifier ^slicing.rules = #open
* package.identifier contains
    spor 0..* MS
* package.identifier[spor] ^short = "SPOR (Europe)"
* package.identifier[spor] ^definition = "EMA - SPOR product identifier" // to be reviewed
* package.identifier[spor].system = $spor-prod // to be reviewed
* package.identifier[spor].value ^short = "EMA Package Product ID" // to be reviewed
* package.identifier[spor].use = #official

* package.type MS // = https://spor.ema.europa.eu/rmswi/#/#100000073543 "Pre-filled pen"
// CHANGE TO A VALUE SET BASED DISCRIMINATOR
* package.type.coding ^slicing.discriminator[0].type = #value
* package.type.coding ^slicing.discriminator[=].path = "system"
* package.type.coding ^slicing.rules = #open
* package.type.coding contains
    spor 0..* MS
* package.type.coding[spor] ^short = "SPOR (Europe)"
* package.type.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
* package.type.coding[spor].system = $spor // to be reviewed
* package.type.coding[spor].code 1.. 

* package.quantity MS // = 3

* package.material MS // = https://spor.ema.europa.eu/rmswi/#/#200000003204  "Glass type I"
// CHANGE TO A VALUE SET BASED DISCRIMINATOR
* package.material.coding ^slicing.discriminator[0].type = #value
* package.material.coding ^slicing.discriminator[=].path = "system"
* package.material.coding ^slicing.rules = #open
* package.material.coding contains
    spor 0..* MS
* package.material.coding[spor] ^short = "SPOR (Europe)"
* package.material.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
* package.material.coding[spor].system = $spor // to be reviewed
* package.material.coding[spor].code 1.. 

//reference to EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* packageFor only Reference(MedicinalProductDefinitionUvEpi)
