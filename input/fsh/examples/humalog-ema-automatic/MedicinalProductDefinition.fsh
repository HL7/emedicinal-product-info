
Instance: mpd33868162d255ced115cecbbf188aab4
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product Humalog Mix50 Insulin KwikPen, 100 U/ml, Suspension for injection 3ml pre-fill"
Description: "Humalog Mix50 Insulin KwikPen, 100 U/ml, Suspension for injection 3ml pre-fill"
Usage: #example

 
* identifier[+].system = "https://spor.ema.europa.eu/pmswi"
* identifier[=].value = "EU/1/96/007/035" 
* identifier[+].system = "https://www.who-umc.org/phpid"
* identifier[=].value = "0xF79CABF272B6A7EEF104DDDA44E82717"
* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "active"





* legalStatusOfSupply = $spor-rms#100000072084 "Medicinal product subject to medical prescription"

 

* classification[+] = $atc#A10AB04 "insulin lispro"
* name
  * productName = "Humalog Mix50 Insulin KwikPen, 100 U/ml, Suspension for injection 3ml pre-fill"
  * type = $spor-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "Humalog"
    * type = $spor-productNamePartType-cs#220000000002
    * type.text = "Invented name part"
  
  * part[+]
    * part = "insulin lispro"
    * type = $spor-productNamePartType-cs#220000000003
    * type.text = "Scientific name part"
  
  * part[+]
    * part = "100 U/ml"
    * type = $spor-productNamePartType-cs#220000000004
    * type.text = "Strength part"
  
  * part[+]
    * part = "Suspension for injection"
    * type = $spor-productNamePartType-cs#220000000005
    * type.text = "Pharmaceutical dose form part"
  
  * usage
    * country = urn:iso:std:iso:3166#DK "Denmark"
    * jurisdiction = urn:iso:std:iso:3166#DK "Denmark"
    * language = urn:ietf:bcp:47#en  "English"