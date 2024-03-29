Instance: acmeinc
InstanceOf: OrganizationUvEpi
Title: "Organization - Acme Inc."
Description: "Marketing Authorization Holder"
Usage: #example

* id = "d71bf884-90eb-47f9-81b7-fa81ecec7e75"

* identifier.system = $example-org
* identifier.value = "ORG1"
* identifier.use = #official

* active = true

* type = $example-cs#220000000034 "Marketing authorisation holder"
* name = "acme inc"

* contact
  * address
    * text = "54, Yonge Street, Paris, France"
    * use = #work
    * type = #physical
    * line = "54, Yonge Street"
    * city = "Paris"
    * country = "FR"
