
Instance: mpbe76bdf784deea6950583b234f789db2
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product Remsima 100 mg powder for concentrate for solution for infusion"
Description: "EU/1/97/049/001 Remsima 100 mg powder for concentrate for solution for infusion"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "nan"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "active"





* legalStatusOfSupply = $spor-rms#100000072084 "Medicinal product subject to medical prescription"


* name
  * productName = "Remsima 100 mg powder for concentrate for solution for infusion"
  * type = $spor-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "Remsima"
    * type = $spor-productNamePartType-cs#220000000002
    * type.text = "Invented name part"
  
  * part[+]
    * part = "Infliximab"
    * type = $spor-productNamePartType-cs#220000000003
    * type.text = "Scientific name part"
  
  * part[+]
    * part = "100 mg"
    * type = $spor-productNamePartType-cs#220000000004
    * type.text = "Strength part"
  
  * part[+]
    * part = "powder for concentrate for solution for infusion"
    * type = $spor-productNamePartType-cs#220000000005
    * type.text = "Pharmaceutical dose form part"
  
  * usage
    * country = urn:iso:std:iso:3166#eu ""
    * jurisdiction = urn:iso:std:iso:3166#eu ""
    * language = urn:ietf:bcp:47#eu  "English"