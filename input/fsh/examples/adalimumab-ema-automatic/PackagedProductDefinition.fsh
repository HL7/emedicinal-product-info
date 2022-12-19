
Instance: ppd-adalimumab
InstanceOf: PackagedProductDefinitionUvEpi
Title: "adalimumab"
Description: "adalimumab"
Usage: #example
* id = "560639ae-8c6a-4f98-9a5b-455534b1b16a" 

* identifier.system = $spor-prod
* identifier.value = "EU/1/16/1157/002"
* identifier.use = #official

* name = "adalimumab"

* type = $spor-rms#100000155527 "Chemical Medicinal Prodcut"
//* type = $spor-rms#100000155527


* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2015-02-07T13:28:17Z"


* containedItemQuantity = 3 'ml'

* description = "Type I colourless glass cartridge with a black plunger (bromobutyl rubber) and a flanged cap (aluminium) with inserted laminated sealing disks (bromobutyl rubber on the medicinal product side and polyisoprene on the outside) containing 3 ml of solution. Each cartridge is assembled into a disposable pen."
* copackagedIndicator = false


* packaging
  * identifier.system = $spor-prod
  * identifier.value = "EU/1/16/1157/002"
  * type = $spor-rms#100000073543 "Pre-filled pen"
  * quantity = 5
  * material = $spor-rms#200000003204 "Glass type 1"



//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* packageFor = Reference(mpadalimumab)
 // Reference to Organization: MAH
* manufacturer = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab)
