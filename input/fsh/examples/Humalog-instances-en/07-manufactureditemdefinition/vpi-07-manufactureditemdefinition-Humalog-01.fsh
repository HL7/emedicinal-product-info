Instance: cfd35737-9e60-4604-9132-717615cfaf4c
InstanceOf: ManufacturedItemDefinitionUvEpi
Description: "Manufactured Item"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "EU/1/96/007/035"
* identifier.use = #official

* status = #active

* manufacturedDoseForm = https://spor.ema.europa.eu/rmswi/#100000073864
* manufacturedDoseForm.text = "Suspension for injection"

* unitOfPresentation = $spor-rms#200000002135
* unitOfPresentation.text = "Pen"

 // Reference to Organization: Manufacturer
* manufacturer = Reference(1a2b1f1d-5e6c-40cd-96a1-ee4183243de8)
