Instance: cfsb1639761980721
InstanceOf: RegulatedAuthorization
Description: "Regulated Authorization"
Usage: #example

* identifier.system = "https://spor.ema.europa.eu/rmswi/"
* identifier.value = "PL 31654/0006"
* identifier.use = #official

 // Reference to MedicinalProductDefinition: Medicinal Product
* subject = Reference(cfsb1639760186202)

* type = https://spor.ema.europa.eu/rmswi/#/#100000072062


* region = urn:iso:std:iso:3166#eu
* region.text = "European Union"

* status = $publication-status#active
* status.text = "Active"

* statusDate = "2015-02-07T13:28:17Z"

 // Reference to Organization: Market Authorization Holder
* holder = Reference(cfsb1639754108144)

 // Reference to Organization: EMA
* regulator = Reference(cfsb1639015880655)
