Instance: 2a153905-acbd-4e65-9aef-7a8e2772f5ec
InstanceOf: RegulatedAuthorization
Description: "Regulated Authorization"
Title: "Regulated Authorization GB"
Usage: #example

* identifier.system = "https://mhra.gov.uk/example/man"
* identifier.value = "PLGB 14895/0253"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill
* subject = Reference(6200a0a8-2fc1-46d4-aa66-2a98ac0cabc2)

* type = EmaSporScope#100000072062 "Marketing Authorization"


* region = urn:iso:std:iso:3166#gb
* region.text = "UNITED KINGDOM OF GREAT BRITAIN AND NORTHERN IRELAND"

* status = $publication-status#active
* status.text = "Active"

* statusDate = "2022-02-07T13:28:17Z"

 // Reference to Organization: Marketing Authorization Holder
* holder = Reference(4317c03f-3558-4548-9465-3dc4b4ab7b55)

 // Reference to Organization: Marketing Authorization Regulator
* regulator = Reference(81da637d-8053-4826-80c9-3c462ba02b01)
