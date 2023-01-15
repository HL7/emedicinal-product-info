
Instance: ppd-mirtazapinacinfa30mgcoatedtablet30tablets
InstanceOf: PackagedProductDefinitionUvEpi
Title: "MIRTAZAPINA CINFA 30 mg Coated Tablet, 30 tablets"
Description: "MIRTAZAPINA CINFA 30 mg Coated Tablet, 30 tablets"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "nan"
* identifier.use = #official

* name = "MIRTAZAPINA CINFA 30 mg Coated Tablet, 30 tablets"

* type = $spor-rms#100000155527 "Chemical Medicinal Prodcut"
//* type = $spor-rms#100000155527


* status = http://hl7.org/fhir/publication-status#active "Active"
* statusDate = "2021-09-01"


* containedItemQuantity = 30 'mg'





* packaging
  * identifier.system = $spor-prod
  * identifier.value = "123456"
  * type = $spor-rms#100000073496 "Blister"
  * quantity = 30
  * material = $spor-rms#200000003222 "PolyVinyl Chloride"



//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* packageFor = Reference(mpMIRTAZAPINeCINFA30mgCoatedTablet)
 // Reference to Organization: MAH
* manufacturer = Reference(org-marketingauthorisationholder-laboratorioscinfasa-mirtazapine)
