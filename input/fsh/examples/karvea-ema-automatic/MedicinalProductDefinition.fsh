
Instance: Karvea75mgtabletblisterx28
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product Karvea 75 mg tablet blister x28"
Description: "EU/1/97/049/001 Karvea 75 mg tablet blister x28"
Usage: #example


* id = "f0be6f90-48c2-4765-983b-622e7e122a26" 
* identifier.system = $spor-prod
* identifier.value = "4471bb15-7f52-4fcd-b615-8674ce6eb91e"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "active"

* legalStatusOfSupply = $spor-rms#100000072084 "Medicinal product subject to medical prescription"

* name
  * productName = "Karvea 75 mg tablet blister x28"
  * type = $spor-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "Karvea"
    * type = $spor-productNamePartType-cs#220000000002
    * type.text = "Invented name part"
  
  * part[+]
    * part = "irbesartan"
    * type = $spor-productNamePartType-cs#220000000003
    * type.text = "Scientific name part"
  
  * part[+]
    * part = "75 mg"
    * type = $spor-productNamePartType-cs#220000000004
    * type.text = "Strength part"
  
  * part[+]
    * part = "tablet"
    * type = $spor-productNamePartType-cs#220000000005
    * type.text = "Pharmaceutical dose form part"
  
  * usage
    * country = urn:iso:std:iso:3166#DK
    * jurisdiction = urn:iso:std:iso:3166#DK
    * language = urn:ietf:bcp:47#en