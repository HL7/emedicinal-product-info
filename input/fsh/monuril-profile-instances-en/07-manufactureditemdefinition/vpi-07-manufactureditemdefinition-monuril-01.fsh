Instance: cfsb1639756818482
InstanceOf: ManufacturedItemDefinition
Description: "Monuril Granules for oral solution"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "EU/1/17/1201/001"
* identifier.use = #official
 
* manufacturedDoseForm = https://spor.ema.europa.eu/rmswi/#100000073365 "Granules for oral solution"
* manufacturedDoseForm.text = "Granules for oral solution"

* unitOfPresentation = https://spor.ema.europa.eu/rmswi/#200000002143 "Sachet"
* unitOfPresentation.text = "Sachet"

 // Reference to Organization: Manufacturer
* manufacturer = Reference(cfsb1639753766266)

* ingredient.reference = Reference(cfsb1639754408039)
* ingredient[1].reference = Reference(cfsb1639762372321)
* ingredient[2].reference = Reference(cfsb1639762593730)

