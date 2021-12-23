Instance: cfsb1639756818482
InstanceOf: ManufacturedItemDefinition
Description: "Monuril Granules for oral solution"
Usage: #example

* status = #active

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "PL 31654/0006"
* identifier.use = #official
 
* manufacturedDoseForm = https://spor.ema.europa.eu/rmswi/#100000073365 "Granules for oral solution"
* manufacturedDoseForm.text = "Granules for oral solution"

* unitOfPresentation = https://spor.ema.europa.eu/rmswi/#200000002143 "Sachet"
* unitOfPresentation.text = "Sachet"

 // Reference to Organization: Manufacturer
* manufacturer = Reference(cfsb1639753766266)

