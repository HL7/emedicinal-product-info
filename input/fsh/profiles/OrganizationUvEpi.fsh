Profile: OrganizationUvEpi
Parent: Organization
Id: Organization-uv-epi
Title: "Organization (ePI)"
Description: "Organization (ePI)"

* identifier 1..
  * system from VsOrganizationIdSystems (extensible)
  * system 1..
  * value 1..


* active ^short = "Whether the organization's record is in active use"

// * type = https://spor.ema.europa.eu/rmswi/#/#220000000033
// * type.text = "Manufacturer API"

// CHANGE TO A VALUE SET BASED DISCRIMINATOR
* type.coding ^slicing.discriminator[0].type = #value
* type.coding ^slicing.discriminator[=].path = "system"
* type.coding ^slicing.rules = #open
* type.coding contains
    spor 0..* 
* type.coding[spor] ^short = "SPOR (Europe)"
* type.coding[spor] ^definition = "EMA - SPOR Referential" // to be reviewed
* type.coding[spor].system = $spor // to be reviewed
* type.coding[spor].code 1.. 



* name ^short = "Organization's name"
* alias ^short = "A list of alternate names for this organization"

* telecom 0..
  * system 1..
  * value 1..
* telecom ^slicing.discriminator[0].type = #value
* telecom ^slicing.discriminator[=].path = "system"
* telecom ^slicing.rules = #open
* telecom contains
    phone 0.. and
	email 0.. and
	url 0..
	
* telecom[phone] ^short = "Phone"
* telecom[phone] ^definition = "Contact Point - phone" // to be reviewed
* telecom[phone].system = #phone

* telecom[email] ^short = "email"
* telecom[email] ^definition = "Contact Point - email" // to be reviewed
* telecom[email].system = #email

* telecom[url] ^short = "Web Site"
* telecom[url] ^definition = "Contact Point - Web Site" // to be reviewed
* telecom[url].system = #url

* address 0..
  * use ^short = "home | work | temp | old | billing" // = #work
  * text ^example.valueString = "Brueningstrasse 50, Industriepark Höchst, 65926 Frankfurt am Main, GERMANY" // = "Brueningstrasse 50, Industriepark Höchst, 65926 Frankfurt am Main, GERMANY" 
  * type ^short = "postal|physical|both" // = #physical
  * line ^example.valueString = "Brueningstrasse 50, Industriepark Höchst" // = "Brueningstrasse 50, Industriepark Höchst"
  * postalCode ^example.valueString = "65926"
  * city ^example.valueString = "Frankfurt am Main"
  * country ^example.valueString = "DE"