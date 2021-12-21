Instance: cfsb1639758328687
InstanceOf: PackagedProductDefinition
Description: "Monuril 5 sachets of 8 g of granules (3 g fosfomycin)"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "PL 31654/0006-5"
* identifier.use = #official
 
* name = "5 sachets of 8 g of granules (3 g fosfomycin)."

* type = https://spor.ema.europa.eu/rmswi/#100000155527 "Chemical Medicinal Product"
* type.text = "Chemical Medicinal Product"

* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2008-09-19"

* containedItemQuantity.value = 5
* containedItemQuantity.unit = "Sachet"
* containedItemQuantity.code = https://spor.ema.europa.eu/rmswi/#200000002143 "Sachet"

 // Reference to Organization: Manufacturer
* manufacturer = Reference(cfsb1639753766266)

* package.type = https://spor.ema.europa.eu/rmswi/#200000002143
* package.type.text = "Sachet"
* package.material = https://spor.ema.europa.eu/rmswi/#200000003207
* package.material.text = "Paper"
* package.material[1] = https://spor.ema.europa.eu/rmswi/#200000003214
* package.material[1].text = "PolyEthylene"
* package.material[2] = https://spor.ema.europa.eu/rmswi/#200000003200
* package.material[2].text = "Aluminium"
* package.manufacturer = Reference(cfsb1639753766266)
* package.containedItem.item.reference = Reference(cfsb1639756818482)

 // Reference to MedicinalProductDefinition: Medicinal Product
* subject = Reference(cfsb1639760186202)

* marketingAuthorization = Reference(cfsb1639761980721)

