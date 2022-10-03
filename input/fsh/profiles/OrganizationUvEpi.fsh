Profile: OrganizationUvEpi
Parent: Organization
Id: Organization-uv-epi
Title: "Organization (ePI)"
Description: "Organization (ePI)"

* identifier 1..
  * system from VsOrganizationIdSystems (extensible)
  * system 1..
  * value 1..

* active ^short = "Whether this organization's record is in active use"

// * type = https://spor.ema.europa.eu/rmswi/#/#220000000033
// * type.text = "Manufacturer API"

* type from VsOrganizationType (extensible)
  * ^short = "Type of organization"
  * ^definition = "Organization type clarifies what purpose or busines operation this organization performs in relation to the ePI and the associated authorized medicinal products mentioned."

* name ^short = "Organization's legal name"
* alias ^short = "A list of alternate names for this organization"

* description 0..

* contact
  * telecom ^slicing.discriminator[0].type = #value
  * telecom ^slicing.discriminator[=].path = "system"
  * telecom ^slicing.rules = #open
  * telecom contains
        phone 0.. and
	     email 0.. and
	     url 0..
  * telecom[phone] 0..
    * ^short = "Phone"
    * ^definition = "Corporate phone contact information for the local representative of the marketing authorization holder. International dialling code followed by the area code and telephone number."
    * system = #phone

  * telecom[email] 0..
    * ^short = "email"
    * ^definition = "Corporate email contact information for the local representative of the marketing authorization holder."
    * system = #email

  * telecom[url] 0..
    * ^short = "Web Site"
    * ^definition = "Website of the local health authority and market authorization holder website "
    * system = #url

  * address 1..
    * use ^short = "home | work | temp | old | billing" // = #work
    * use = #work
    * text ^example.label = "Address example"
    * text ^example.valueString = "Brueningstrasse 50, Industriepark Höchst, 65926 Frankfurt am Main, GERMANY" // = "Brueningstrasse 50, Industriepark Höchst, 65926 Frankfurt am Main, GERMANY" 
    * type ^short = "postal|physical|both" // = #physical
    * type = #physical
    * line 1..
    * line ^example.label = "Address example line 1"
    * line ^example.valueString = "Brueningstrasse 50, Industriepark Höchst" // = "Brueningstrasse 50, Industriepark Höchst"
    * postalCode ^example.valueString = "65926"
    * postalCode ^example.label = "Example postcode"
    * city ^example.label = "Address example City"
    * city ^example.valueString = "Frankfurt am Main"
    * city 1..
    * country ^example.label = "Address example Country"
    * country ^example.valueString = "DE"
    * country from $VS-country (preferred)
    * country 1..