
Instance: ppd-3mlcartridgeglassinaprefilledpen
InstanceOf: PackagedProductDefinitionUvEpi
Title: "3 ml cartridge (glass) in a pre-filled pen"
Description: "3 ml cartridge (glass) in a pre-filled pen"
Usage: #example
* id = "9df19a62-bf14-41e5-a38b-e2db9c96d3ca" 

* identifier.system = $spor-prod
* identifier.value = "EU/1/16/1157/002"
* identifier.use = #official

* name = "3 ml cartridge (glass) in a pre-filled pen"

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
* packageFor = Reference(mpSuliqua100unitsml50microgramsmlsolutionforinjectioninaprefilledpen)
 // Reference to Organization: MAH
* manufacturer = Reference(org-marketingauthorisationholder-sanofiaventisgroupe-suliqua)
