Instance: manitemDrugX75
InstanceOf: ManufacturedItemDefinitionUvEpi
Title: "Manufactured Item - 75 mg tablet"
Description: "DrugX 75 mg tablet"
Usage: #example

* id = "3214f286-b8ec-4ef5-bc8d-0aec39d97468"

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "EU/1/96/007/035"
* identifier.use = #official

* status = #active

* manufacturedDoseForm = $manufactured-dose-form#100000073664 "Tablet"
* unitOfPresentation = $unit-of-presentation#200000002152 "Tablet"


 // Reference to Organization: Manufacturer
* manufacturer = Reference(acmeinc)
