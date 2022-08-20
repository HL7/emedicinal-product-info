Instance: emacfsb1639764389611
InstanceOf: PackagedProductDefinition
Description: "Packaged Product - 2 sachets of 8 g of granules"
Usage: #example
 
* identifier.system = "https://spor.ema.europa.eu/pmswi/#/"
* identifier.value = "PL 31654/0006-2"
* identifier.use = #official
 
* name = "2 sachets of 8 g of granules (3 g fosfomycin)."

* type = $spor-rms#100000155527 "Chemical Medicinal Product"
* type.text = "Chemical Medicinal Product"

* status = http://hl7.org/fhir/publication-status#active "Active"

* containedItemQuantity.value = 2
* containedItemQuantity.unit = "Sachet"
* containedItemQuantity.code = https://spor.ema.europa.eu/rmswi/#200000002143 "Sachet"

* package.type = https://spor.ema.europa.eu/rmswi/#200000002143
* package.type.text = "Sachet"
* package.material = https://spor.ema.europa.eu/rmswi/#200000003207
* package.material.text = "Paper"
* package.material[1] = https://spor.ema.europa.eu/rmswi/#200000003214
* package.material[1].text = "PolyEthylene"
* package.material[2] = https://spor.ema.europa.eu/rmswi/#200000003200
* package.material[2].text = "Aluminium"
* package.manufacturer = Reference(emacfsb1639753766266)
* package.containedItem.item.reference = Reference(emacfsb1639756818482)

 // Reference to MedicinalProductDefinition: Medicinal Product
* packageFor = Reference(emacfsb1639760186202)

 // Reference to Manufactured Item
* package.containedItem.item.reference = Reference(emacfsb1639756818482)

 // Reference to Organization: Manufacturer
* manufacturer = Reference(emacfsb1639753766266)