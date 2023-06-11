Instance: acmeinc
InstanceOf: OrganizationUvEpi
Title: "Organization - Acme Inc."
Description: "Marketing Authorization Holder"
Usage: #example

* id = "d71bf884-90eb-47f9-81b7-fa81ecec7e75"

* identifier.system = $spor-org
* identifier.value = "ORG1"
* identifier.use = #official

* active = true

* type = $spor-rms#220000000034 "Marketing authorisation holder"
* type.text = "Marketing authorisation holder"
* name = "acme inc"

* contact
  * address
    * text = "54, Yonge Street, Paris, France"
    * use = #work
    * type = #physical
    * line = "54, Yonge Street"
    * city = "Paris"
    * country = "FR"
