Instance: organizationmah
InstanceOf: OrganizationUvEpi
Description: "Marketing Authorization Holder"
Usage: #example

* identifier.system = "https://pmda-org-id"
* identifier.value = "672212"
* identifier.use = #official

* active = true

* type = https://PMDA-org-type.jp/#tbd "Marketing authorisation holder"
* type.text = "Manufacturer"
* name = "Pfizer, Inc."

* contact
  * address
    * text = "3-22-7 Yoyogi, Shibuya-ku, Tokyo"
    * use = #work
    * type = #physical
    * line = "3-22-7 Yoyogi"
    * city = "Tokyo"
    * country = "Tokyo"
