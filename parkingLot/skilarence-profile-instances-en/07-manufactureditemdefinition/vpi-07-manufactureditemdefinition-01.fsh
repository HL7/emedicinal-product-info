Instance: cfsb1639190046041
InstanceOf: ManufacturedItemDefinition
Description: "30 mg tablet, Blister, 42 pack"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "EU/1/17/1201/001"
* identifier.use = #official

* status = #active

* manufacturedDoseForm = https://spor.ema.europa.eu/rmswi/#/#200000002102
* manufacturedDoseForm.text = "Tablet"

* unitOfPresentation = https://spor.ema.europa.eu/rmswi/#/#200000002152


 // Reference to Organization: Manufacturer
* manufacturer = Reference(cfsb1639015344307)

* property.type = https://ncim-stage.nci.nih.gov/ncimbrowser/#C48557
* property.type.text = "Structured Product Labeling Shape"
* property.valueCodeableConcept = https://ncim-stage.nci.nih.gov/ncimbrowser/#C48348
* property.valueCodeableConcept.text = "ROUND"

* property[1].type = https://ncim-stage.nci.nih.gov/ncimbrowser/#C0456389
* property[1].type.text = "Size"
* property[1].valueQuantity.value = 6.8
* property[1].valueQuantity.unit = "mm"

* property[2].type = https://ncim-stage.nci.nih.gov/ncimbrowser/#C0009393
* property[2].type.text = "Color"
* property[2].valueCodeableConcept = https://ncim-stage.nci.nih.gov/ncimbrowser/#C48325
* property[2].valueCodeableConcept.text = "White"

