Instance: 7f257409-3b65-401d-a246-7ae51e298fbb
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

* address.text = "3-22-7 Yoyogi, Shibuya-ku, Tokyo"
* address.use = #work
* address.type = #physical
* address.line = "3-22-7 Yoyogi"
* address.city = "Tokyo"
* address.country = "JP"

* telecom.system = #phone
* telecom.value = "0120-664-467"
* telecom.use = #work

* telecom[1].system = #fax
* telecom[1].value = "03-3379-3053"
* telecom[1].use = #work