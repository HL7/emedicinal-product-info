
Instance: mpf97db27e6330f77484eb8425ad2913cd
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product Humira 40 mg Solution for injection Subcutaneous use pre-filled syringe (glass)"
Description: "EU/1/97/049/001 Humira 40 mg Solution for injection Subcutaneous use pre-filled syringe (glass)"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "nan"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "active"





* legalStatusOfSupply = $spor-rms#100000000000 "Medicinal product subject to medical prescription"


* name
  * productName = "Humira 40 mg Solution for injection Subcutaneous use pre-filled syringe (glass)"
  * type = $spor-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "Humira"
    * type = $spor-productNamePartType-cs#220000000002
    * type.text = "Invented name part"
  
  * part[+]
    * part = "Adalimumab"
    * type = $spor-productNamePartType-cs#220000000003
    * type.text = "Scientific name part"
  
  * part[+]
    * part = "20 mg"
    * type = $spor-productNamePartType-cs#220000000004
    * type.text = "Strength part"
  
  * part[+]
    * part = "Solution for injection"
    * type = $spor-productNamePartType-cs#220000000005
    * type.text = "Pharmaceutical dose form part"
  
  * usage
    * country = urn:iso:std:iso:3166#ES ""
    * jurisdiction = urn:iso:std:iso:3166#ES ""
    * language = urn:ietf:bcp:47#en  "English"