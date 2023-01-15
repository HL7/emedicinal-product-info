

Instance: org-marketingauthorisationholder-acmeindustry-acmedrug
InstanceOf: OrganizationUvEpi
Title: "ACME industry as Marketing authorisation holder"
Description: "ACME industry as Marketing authorisation holder"
Usage: #example

* identifier.system = $spor-org
* identifier.value = "ORG-100000789"
* identifier.use = #official

* active = true

* type = $spor-rms#220000000034  "Marketing authorisation holder"
* type.text = "Marketing authorisation holder"
* name = "ACME industry"

* contact
  * address
    * text = "street x and y  Paris FR"
    * use = #work
    * type = #physical
    * line = "street x and y"
    * city = "Paris"
    * country = "FR"
    