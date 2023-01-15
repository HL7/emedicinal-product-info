
Instance: ppd-calciovitaminad3rovi1000mg880uicomprimidosefervescentes
InstanceOf: PackagedProductDefinitionUvEpi
Title: "Calcio/Vitamina D3 ROVI 1000 mg / 880 UI comprimidos efervescentes"
Description: "Calcio/Vitamina D3 ROVI 1000 mg / 880 UI comprimidos efervescentes"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "x"
* identifier.use = #official

* name = "Calcio/Vitamina D3 ROVI 1000 mg / 880 UI comprimidos efervescentes"

* type = $spor-rms#100000155527 "Chemical Medicinal Prodcut"
//* type = $spor-rms#100000155527


* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2012-01-03"


* containedItemQuantity = 2500 'mg'


* copackagedIndicator = false


* packaging
  * identifier.system = $spor-prod
  * identifier.value = "123456"
  * type = $spor-rms#100000073496 "Blister"
  * quantity = 30
  * material = $spor-rms#xxx "cardboard"



//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* packageFor = Reference(mpCalcioVitaminaD3ROVI1000mg880UIcomprimidosefervescentes)
 // Reference to Organization: MAH
* manufacturer = Reference(org-marketingauthorisationholder-laboratoriosfarmacuticosrovisa-calcio_vitamina_d)
