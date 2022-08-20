Instance: emacfsb1639756818482
InstanceOf: ManufacturedItemDefinition
Description: "Monuril Granules for oral solution"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "PL 31654/0006"
* identifier.use = #official

* status = #active

* manufacturedDoseForm = https://spor.ema.europa.eu/rmswi/#100000073365 "Granules for oral solution"
* manufacturedDoseForm.text = "Granules for oral solution"

* unitOfPresentation = https://spor.ema.europa.eu/rmswi/#200000002143 "Sachet"
* unitOfPresentation.text = "Sachet"

 // Reference to Organization: Manufacturer
* manufacturer = Reference(emacfsb1639753766266)
