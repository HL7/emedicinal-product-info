
Instance: ppd-pentasaslowreleasetablets1g
InstanceOf: PackagedProductDefinitionUvEpi
Title: "Pentasa Slow Release Tablets 1g"
Description: "Pentasa Slow Release Tablets 1g"
Usage: #example
* id = "07c0f4b6-1c67-47ae-9368-dd6278a14919" 

* identifier.system = $spor-prod
* identifier.value = "x"
* identifier.use = #official

* name = "Pentasa Slow Release Tablets 1g"

* type = $spor-rms#100000155527 "Chemical Medicinal Prodcut"
//* type = $spor-rms#100000155527


* status = http://hl7.org/fhir/publication-status#active "Active"
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
