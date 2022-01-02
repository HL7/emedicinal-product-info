Instance: cfsb6176453266374
InstanceOf: ManufacturedItemDefinition
Description: "Suliqua 100 units/ml + 50 micrograms/ml solution for injection in x5 pre-filled pens"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "EU/1/16/1157/002"
* identifier.use = #official

* status = #active

* manufacturedDoseForm = https://spor.ema.europa.eu/rmswi/#/#200000002007
* manufacturedDoseForm.text = "Solution"

* unitOfPresentation = https://spor.ema.europa.eu/rmswi/#/#200000002135
* unitOfPresentation.text = "Pen"

 // Reference to Organization: Manufacturer
* manufacturer = Reference(cfsb2176224411725)