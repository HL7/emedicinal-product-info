
Instance: mpPentasaSlowReleaseTablets1g
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product Pentasa Slow Release Tablets 1g"
Description: "EU/1/97/049/001 Pentasa Slow Release Tablets 1g"
Usage: #example


* id = "d2b4e8da-15b3-4132-8600-09ede8546895" 
* identifier.system = $spor-prod
* identifier.value = "xx"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "active"





* legalStatusOfSupply = $spor-rms#100000000000 "Medicinal product subject to medical prescription"


* name
  * productName = "Pentasa Slow Release Tablets 1g"
  * type = $spor-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "Pentasa"
    * type = $spor-productNamePartType-cs#220000000002
    * type.text = "Invented name part"
  
  * part[+]
    * part = "mesalazine"
    * type = $spor-productNamePartType-cs#220000000003
    * type.text = "Scientific name part"
  
  * part[+]
    * part = "1 g"
    * type = $spor-productNamePartType-cs#220000000004
    * type.text = "Strength part"
  
  * part[+]
    * part = "Prolonged-release tablet"
    * type = $spor-productNamePartType-cs#220000000005
    * type.text = "Pharmaceutical dose form part"
  
  * usage
    * country = urn:iso:std:iso:3166#ES ""
    * jurisdiction = urn:iso:std:iso:3166#ES ""
    * language = urn:ietf:bcp:47#en  "English"