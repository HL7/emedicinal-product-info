Instance: 7460b712-82ad-4cce-a756-90b0fa04896c
InstanceOf: ManufacturedItemDefinitionUvEpi
Description: "Manufactured Item - Aromasin (exemestane) Tablets 25 mg"
Usage: #example

* identifier.system = "https://pmda-sccj"
* identifier.value = "874291"
* identifier.use = #official

* status = #active

* manufacturedDoseForm = https://standardterms.edqm.eu/browse/get_concepts_by/SOM/SOM/#10219000
* manufacturedDoseForm.text = "Tablet"

* unitOfPresentation = https://standardterms.edqm.eu/browse/get_concepts/UOP/#15054000
* unitOfPresentation.text = "Tablet"

 // Reference to Organization: Manufacturer
* manufacturer = Reference(7f257409-3b65-401d-a246-7ae51e298fbb)
