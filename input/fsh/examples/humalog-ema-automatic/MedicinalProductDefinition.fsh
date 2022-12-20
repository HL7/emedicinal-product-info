
Instance: mpHumalogMix50InsulinKwikPen3mlprefill
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
Description: "EU/1/97/049/001 Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
Usage: #example


* id = "5b19f7ba-b52f-4df4-86b6-90e1e9936fd9" 
* identifier.system = $spor-prod
* identifier.value = "123456"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "active"





* legalStatusOfSupply = $spor-rms#100000072084 "Medicinal product subject to medical prescription"

 

* classification[+] = $atc#A10AB04 "insulin lispro"
* name
  * productName = "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
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