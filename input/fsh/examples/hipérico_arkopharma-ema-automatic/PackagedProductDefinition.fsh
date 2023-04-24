
Instance: ppd-29436a85dac3ea374adb3fa64cfd2578
InstanceOf: PackagedProductDefinitionUvEpi
Title: "HIPÉRICO ARKOPHARMA cápsulas duras"
Description: "HIPÉRICO ARKOPHARMA cápsulas duras"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "x"
* identifier.use = #official

* name = "HIPÉRICO ARKOPHARMA cápsulas duras"

* type = $spor-rms#100000155527 "Chemical Medicinal Prodcut"
//* type = $spor-rms#100000155527


* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2015-01-03"


* containedItemQuantity = 175 'mg'


* copackagedIndicator = false


* packaging
  * identifier.system = $spor-prod
  * identifier.value = "123456"
  * type = $spor-rms#100000073496 "Blister"
  * quantity = 30
  * material = $spor-rms#xxx "cardboard"



//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* packageFor = Reference(mpaf8d2f6e4772c29a8ef9fbb165e80d28)
 // Reference to Organization: MAH
* manufacturer = Reference(org-c2a5378488511eaedce26dde272c2290)
