Instance: cfsb1639231211443
InstanceOf: PackagedProductDefinition
Description: "blister x70 30 mg"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "EU/1/17/1201/013"
* identifier.use = #official

* name = "42 gastro-resistant tablets in PVC/PVDC-aluminium blister packs"

* type = https://spor.ema.europa.eu/rmswi/#/#100000155527
* type.text = "Chemical Medicinal Product"

* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2015-02-07T13:28:17Z"

* containedItemQuantity.value = 70
* containedItemQuantity.unit = "tablets"

* description = "gastro-resistant tablets in PVC/PVDC-aluminium blister packs"

* legalStatusOfSupply = https://spor.ema.europa.eu/rmswi/#/#100000072084
* legalStatusOfSupply.text = "Medicinal product subject to medical prescription"

* copackagedIndicator = false

 // Reference to RegulatedAuthorization: EU/1/17/1201/013 70 - 30 mg
* marketingAuthorization = Reference(cfsb1639231126420)

 // Reference to Organization: Manufacturer
* manufacturer = Reference(cfsb1639015344307)

* package.identifier.system = "https://spor.ema.europa.eu/rmswi/#/"

* package.identifier.value = "EU/1/17/1201/013"

* package.identifier.use = #official

* package.type = https://spor.ema.europa.eu/rmswi/#/#100000073496

* package.type.text = "Blister"

* package.quantity = 1

* package.material = https://spor.ema.europa.eu/rmswi/#/#200000003224

* package.material.text = "Non-plasticised PolyVinyl Chloride / Unplasticised PolyVinyl Chloride"