Instance: cfsb1639228293199
InstanceOf: AdministrableProductDefinition
Description: "120 mg tablet"
Usage: #example
 
* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "TBD"
* identifier.use = #official

* status = #active

* formOf = Reference(cfsb164028843078232)
* formOf[1] = Reference(cfsb164028843078233)
* formOf[2] = Reference(cfsb164028843078234)

* administrableDoseForm = https://spor.ema.europa.eu/rmswi/#200000002102
* administrableDoseForm.text = "Tablet"

* unitOfPresentation = https://spor.ema.europa.eu/rmswi/#200000002152
* unitOfPresentation.text = "Tablet"

 // Reference to ManufacturedItemDefinition: 120 mg tablet
* producedFrom = Reference(cfsb1639191683660)

* property.type = https://ncim-stage.nci.nih.gov/ncimbrowser/#C48557
* property.type.text = "Structured Product Labeling Shape"
* property.valueCodeableConcept = https://ncim-stage.nci.nih.gov/ncimbrowser/#C48348
* property.valueCodeableConcept.text = "ROUND"

* property[1].type = https://ncim-stage.nci.nih.gov/ncimbrowser/#C0456389
* property[1].type.text = "Size"
* property[1].valueQuantity.value = 11.6
* property[1].valueQuantity.unit = "mm"

* property[2].type = https://ncim-stage.nci.nih.gov/ncimbrowser/#C0009393
* property[2].type.text = "Color"
* property[2].valueCodeableConcept = https://ncim-stage.nci.nih.gov/ncimbrowser/#C48325
* property[2].valueCodeableConcept.text = "White"

* routeOfAdministration.code = https://spor.ema.europa.eu/rmswi/#100000073619
* routeOfAdministration.code.text = "oral use"

