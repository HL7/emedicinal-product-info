Profile: OrganizationUvEpi
Parent: Organization
Id: Organization-uv-epi
Title: "Organization (ePI)"
Description: "Organization (ePI)"

* identifier 1..
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[=].path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    spor 0..* MS
* identifier[spor] ^short = "SPOR (Europe)"
* identifier[spor] ^definition = "EMA - SPOR Organization identifier" // to be reviewed
* identifier[spor].system = $spor-org // to be reviewed
* identifier[spor].value ^short = "Organization" // to be reviewed
* identifier[spor].use = #official


* active MS

// * type = https://spor.ema.europa.eu/rmswi/#/#220000000033
// * type.text = "Manufacturer API"

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



* name MS
* address 0..
  * text MS // = "Brueningstrasse 50, Industriepark Höchst, 65926 Frankfurt am Main, GERMANY"
  * use MS // = #work
  * type MS // = #physical
  * line MS // = "Brueningstrasse 50, Industriepark Höchst"
  * postalCode MS // = "65926"
  * city MS // = "Frankfurt am Main"
  * country MS // = "de"