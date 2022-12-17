
Instance: ppd-mirtazapinacinfa30mgcoatedtablet
InstanceOf: PackagedProductDefinitionUvEpi
Title: "MIRTAZAPINA CINFA 30 mg Coated Tablet"
Description: "MIRTAZAPINA CINFA 30 mg Coated Tablet"
Usage: #example
* id = "334d5486-989f-4f1a-a0cc-80f6e8bb41b9" 

* identifier.system = $spor-prod
* identifier.value = "nan"
* identifier.use = #official

* name = "MIRTAZAPINA CINFA 30 mg Coated Tablet"

* type = $spor-rms#100000155527 "Chemical Medicinal Prodcut"
//* type = $spor-rms#100000155527


* status = #active
* statusDate = "2021-09-01"


* containedItemQuantity = 30 'mg'





* packaging
  * identifier.system = $spor-prod
  * identifier.value = "123456"
  * type = $spor-rms#100000073496 "Blister"
  * quantity = 28
  * material = $spor-rms#200000003222 "PolyVinyl Chloride"



//reference to MedicinalProductDefinition: EU/1/97/049/001 Karvea 75 mg tablet
* packageFor = Reference(mpMIRTAZAPINeCINFA30mgCoatedTablet)
 // Reference to Organization: MAH
* manufacturer = Reference(org-marketingauthorisationholder-laboratorioscinfasa-mirtazapine)
