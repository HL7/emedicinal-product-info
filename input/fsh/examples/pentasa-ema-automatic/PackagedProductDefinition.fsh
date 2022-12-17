
Instance: ppd-pentasaslowreleasetablets1g
InstanceOf: PackagedProductDefinitionUvEpi
Title: "Pentasa Slow Release Tablets 1g"
Description: "Pentasa Slow Release Tablets 1g"
Usage: #example
* id = "2017d5e2-0e29-4cc4-bf16-1ba1d9a2f124" 

* identifier.system = $spor-prod
* identifier.value = "x"
* identifier.use = #official

* name = "Pentasa Slow Release Tablets 1g"

* type = $spor-rms#100000155527 "Chemical Medicinal Prodcut"
//* type = $spor-rms#100000155527


* status = #active
* statusDate = "2021-01-01"


* containedItemQuantity = 1 'g'


* copackagedIndicator = false


* packaging
  * identifier.system = $spor-prod
  * identifier.value = "123456"
  * type = $spor-rms#100000073496 "Blister"
  * quantity = 28
  * material = $spor-rms#200000003222 "PolyVinyl Chloride"



//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* packageFor = Reference(mpPentasaSlowReleaseTablets1g)
 // Reference to Organization: MAH
* manufacturer = Reference(org-marketingauthorisationholder-ferringsau-pentasa)
