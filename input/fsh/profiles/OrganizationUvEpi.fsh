Profile: OrganizationUvEpi
Parent: Organization
Id: Organization-uv-epi
Title: "Organization (ePI)"
Description: "Organization (ePI)"

* identifier 1..
  * system 1..
  * value 1..

* active ^short = "Whether this organization's record is in active use"

* type
  * ^short = "Type of organization"
  * ^definition = "Organization type clarifies what purpose or busines operation this organization performs in relation to the ePI and the associated authorized medicinal products mentioned."

* name ^short = "Organization's legal name"
* alias ^short = "A list of alternate names for this organization"

* description ^short = "Additional details about the Organization"

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
    * text ^short = "Text representation of the address."
    * type ^short = "postal|physical|both"
    * line 1..
    * postalCode ^short = "Postal code for area"
    * city 1..
    * country  from VsCountry (preferred)
    * country 1..