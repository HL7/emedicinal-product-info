
Instance: mpBLASTON1mgtablets
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product BLASTON 1 mg tablets"
Description: "EU/1/97/049/001 BLASTON 1 mg tablets"
Usage: #example


* id = "8665d25b-96cd-4d5f-9aec-bbcefe9dca3b" 
* identifier.system = $spor-prod
* identifier.value = "ss"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "active"





* legalStatusOfSupply = $spor-rms#100000000000 "Medicinal product subject to medical prescription"


* name
  * productName = "BLASTON 1 mg tablets"
  * type = $spor-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "Blaston"
    * type = $spor-productNamePartType-cs#220000000002
    * type.text = "Invented name part"
  
  * part[+]
    * part = "Cinitapride"
    * type = $spor-productNamePartType-cs#220000000003
    * type.text = "Scientific name part"
  
  * part[+]
    * part = "1 mg"
    * type = $spor-productNamePartType-cs#220000000004
    * type.text = "Strength part"
  
  * part[+]
    * part = "tablet"
    * type = $spor-productNamePartType-cs#220000000005
    * type.text = "Pharmaceutical dose form part"
  
  * usage
    * country = urn:iso:std:iso:3166#ES ""
    * jurisdiction = urn:iso:std:iso:3166#ES ""
    * language = urn:ietf:bcp:47#en  "English"