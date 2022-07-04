Instance: 9e08ee95-3a63-4f09-9ada-d0b9773ccc80
InstanceOf: ManufacturedItemDefinition
Description: "Manufactured Item"
Usage: #example

* identifier.system = "https://mhra.gov.uk/example/man"
* identifier.value = "PLGB 14895/0253"
* identifier.use = #official

* status = #active

* manufacturedDoseForm = $sct#385220007
* manufacturedDoseForm.text = "Suspension for injection"

* unitOfPresentation = $sct#733006000
* unitOfPresentation.text = "Pen"

 // Reference to Organization: Manufacturer
* manufacturer = Reference(4915c27b-b51a-4071-a031-71c5c5e52036)
