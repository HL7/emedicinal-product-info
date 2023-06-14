Instance: 7ba46499-f770-41fb-86d9-f6eaa11c0921
InstanceOf: RegulatedAuthorizationUvEpi
Description: "Regulated Authorization"
Usage: #example

* identifier.system = $spor-man
* identifier.value = "EU/1/96/007/035"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* subject = Reference(fb3d4c9b-3abe-4ef4-9ef8-73dcd1059258)

* type = EmaSporScope#100000072062 "Marketing Authorization" "Marketing Authorization"

* region = urn:iso:std:iso:3166#eu "European Union"

* status = $publication-status#active "Active"

* statusDate = "2015-02-07T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* holder = Reference(71dc2536-d675-4558-92a9-cc8a6342ab0f)
