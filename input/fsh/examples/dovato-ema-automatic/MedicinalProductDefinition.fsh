
Instance: mp16598f252d07b4784b82ba43cf9e847e
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product Dovato 50 mg/300 mg film-coated tablets"
Description: "Dovato 50 mg/300 mg film-coated tablets"
Usage: #example

 
* identifier[+].system = "EU/1/19/1370/001"
* identifier[=].value = "https://spor.ema.europa.eu/pmswi" 
* identifier[+].system = "0x073AF2E5B92AE19E8B67635AFFB3D6CA"
* identifier[=].value = "https://www.who-umc.org/phpid"
* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "active"





* legalStatusOfSupply = $spor-rms#100000072084 "Medicinal product subject to medical prescription"


* name
  * productName = "Dovato 50 mg/300 mg film-coated tablets"
  * type = $spor-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "Dovato"
    * type = $spor-productNamePartType-cs#220000000002
    * type.text = "Invented name part"
  
  * part[+]
    * part = "dolutegravir/lamivudine"
    * type = $spor-productNamePartType-cs#220000000003
    * type.text = "Scientific name part"
  
  * part[+]
    * part = "50 mg/300 mg"
    * type = $spor-productNamePartType-cs#220000000004
    * type.text = "Strength part"
  
  * part[+]
    * part = "film-coated tablets"
    * type = $spor-productNamePartType-cs#220000000005
    * type.text = "Pharmaceutical dose form part"
  
  * usage
    * country = urn:iso:std:iso:3166#eu ""
    * jurisdiction = urn:iso:std:iso:3166#eu ""
    * language = urn:ietf:bcp:47#eu  "English"