
Instance: ppd-calciovitaminad3rovi1000mg880uicomprimidosefervescentes
InstanceOf: PackagedProductDefinitionUvEpi
Title: "Calcio/Vitamina D3 ROVI 1000 mg / 880 UI comprimidos efervescentes"
Description: "Calcio/Vitamina D3 ROVI 1000 mg / 880 UI comprimidos efervescentes"
Usage: #example
* id = "9511941a-4fe6-467a-9601-aba7e2274ac6" 

* identifier.system = $spor-prod
* identifier.value = "x"
* identifier.use = #official

* name = "Calcio/Vitamina D3 ROVI 1000 mg / 880 UI comprimidos efervescentes"

* type = $spor-rms#100000155527 "Chemical Medicinal Prodcut"
//* type = $spor-rms#100000155527


* status = #active
* statusDate = "2012-01-03"


* containedItemQuantity = 2500 'mg'


* copackagedIndicator = false


* packaging
  * identifier.system = $spor-prod
  * identifier.value = "123456"
  * type = $spor-rms#100000073496 "Blister"
  * quantity = 30
  * material = $spor-rms#SPOR look up "cardboard"



//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* packageFor = Reference(mpCalcioVitaminaD3ROVI1000mg880UIcomprimidosefervescentes)
 // Reference to Organization: MAH
* manufacturer = Reference(org-marketingauthorisationholder-laboratoriosfarmacuticosrovisa-calcio/vitamina d3 rovi 1000 mg/880 ui comprimidos efervescentes)
