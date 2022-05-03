Instance: cfsb1650995718524
InstanceOf: PackagedProductDefinition
Description: "50 mg/300 mg film-coated tablets"
Usage: #example

* identifier.system = "$spor-prod"
* identifier.value = "EU/1/19/1370/001"
* identifier.use = #official

* name = "Dovato 50 mg/300 mg film-coated tablets"

* type = $spor-rms#100000155527
* type.text = "Chemical Medicinal Prodcut"

* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2012-02-07T13:28:17Z"

* containedItemQuantity.value = 30
* containedItemQuantity.unit = "tablets"

* package.identifier.system = $spor-prod
* package.identifier.value = "654321"
* package.type = $spor-rms#100000073504 "Child-resistant closure"
* package.quantity = 1
* package.material = $spor-rms#200000003529 "Cardboard"


//reference to MedProDef: EU/1/19/1370/001 Dovato 50 mg/300 mg film-coated tablets
* packageFor = Reference(cfsb1650904258324)

 // Reference to Organization: Manufacturer
* manufacturer = Reference(cfsb1650997423990)
