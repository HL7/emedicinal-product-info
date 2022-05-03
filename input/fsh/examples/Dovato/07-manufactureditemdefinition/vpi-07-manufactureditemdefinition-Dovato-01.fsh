Instance: cfsb1650998521654
InstanceOf: ManufacturedItemDefinition
Description: "Manufactured Item: Dovato 50 mg/300 mg film-coated tablets"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "EU/1/19/1370/001"
* identifier.use = #official

* status = #active

* manufacturedDoseForm = https://spor.ema.europa.eu/rmswi/#100000073665
* manufacturedDoseForm.text = "Film-coated tablet"

* unitOfPresentation = $spor-rms#200000002152
* unitOfPresentation.text = "Tablet"

 // Reference to Organization: Manufacturer
* manufacturer = Reference(cfsb1650997423990)
