// Instance example of the MAH
Instance: cfsb1639003145277
InstanceOf: Organization
Description: "MAH"
Usage: #example
 
 
* identifier.system = "https://spor.ema.europa.eu/rmswi/#/" //Organization role type
* identifier.value = "Marketing authorisation holder" 
* identifier.use = #official
* active = true

* type = https://spor.ema.europa.eu/rmswi/#/#bus
* type.text = "Non-Healthcare Business or Corporation"
* name = "Almirall S.A."
* telecom.system = #phone
* telecom.value = "+34 93 291 30 00"
* telecom.use = #work
* address.text = "Ronda General Mitre 15  Barcelona  08022  Spain"
* address.use = #work
* address.type = #physical
* address.line = "Ronda General Mitre 151"
* address.city = "Barcelona"
* address.country = "es" //$iso:3166-2 for pain
