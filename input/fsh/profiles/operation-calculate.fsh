Instance: calculate
InstanceOf: OperationDefinition
Usage: #definition
* url = "http://hl7.eu/fhir/ig/gravitate-health/OperationDefinition/calculate"
* name = "calculate"
* title = "calculate"
* status = #active
* kind = #operation
* description = "This operation calculates an enhanced version of an ePI as well as "
* affectsState = false
* code = #calculate
* system = true
* type = false
* instance = false
* parameter[0].name = #ips
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "IPS bundle"
* parameter[=].type = #Bundle

* parameter[+].name = #epi
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "ePI identifier Bundle"
* parameter[=].type = #Bundle

* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Enhanced epi Bundle"
* parameter[=].type = #Bundle

* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Enhanced epi Bundle extracts"
* parameter[=].type = #Bundle
