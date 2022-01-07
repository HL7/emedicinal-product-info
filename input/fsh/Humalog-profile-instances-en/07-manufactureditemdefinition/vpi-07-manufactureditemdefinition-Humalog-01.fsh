Instance: cfsb1640777487408
InstanceOf: ManufacturedItemDefinition
Description: "Manufactured Item"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "EU/1/96/007/035"
* identifier.use = #official

* status = #active

* manufacturedDoseForm = https://spor.ema.europa.eu/rmswi/#100000073864
* manufacturedDoseForm.text = "Suspension for injection"

* unitOfPresentation = https://spor.ema.europa.eu/rmswi/#/#200000002135
* unitOfPresentation.text = "Pen"

 // Reference to Organization: Manufacturer
* manufacturer = Reference(cfsb1640870328895)
