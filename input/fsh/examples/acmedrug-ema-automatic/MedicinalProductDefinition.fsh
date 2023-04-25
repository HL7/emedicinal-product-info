
Instance: mp534e209eb0a3ff60437639cb2015316f
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product acmedrug-man"
Description: "acmedrug-man"
Usage: #example

 
* identifier[+].system = "http://fakesys.com/ids"
* identifier[=].value = "4471bb15-7f52-4fcd-b615-8674ce6eb91e"
* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "active"





* legalStatusOfSupply = $spor-rms#100000000000 "Medicinal product subject to medical prescription"


* name
  * productName = "acmedrug-man"
  * type = $spor-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "acme"
    * type = $spor-productNamePartType-cs#220000000002
    * type.text = "Invented name part"
  
  * part[+]
    * part = "acmedrug"
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
    * country = urn:iso:std:iso:3166#DK ""
    * jurisdiction = urn:iso:std:iso:3166#DK ""
    * language = urn:ietf:bcp:47#en  "English"