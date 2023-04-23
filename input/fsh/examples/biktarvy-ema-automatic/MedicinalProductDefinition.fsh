
Instance: mp5fb1761a0a38bea0a9b49f146371c68b
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product Remsima 100 Biktarvy 50 mg/200 mg/25 mg film-coated tabletsmg powder for concentrate for solution for infusion"
Description: "Remsima 100 Biktarvy 50 mg/200 mg/25 mg film-coated tabletsmg powder for concentrate for solution for infusion"
Usage: #example

 
* identifier[+].system = "https://spor.ema.europa.eu/pmswi"
* identifier[=].value = "EU/1/18/1289/001" 
* identifier[+].system = "https://www.who-umc.org/phpid"
* identifier[=].value = "0xF79CABF272B6A7EEF104DDDA44E827gy"
* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "active"





* legalStatusOfSupply = $spor-rms#100000072084 "Medicinal product subject to medical prescription"


* name
  * productName = "Remsima 100 Biktarvy 50 mg/200 mg/25 mg film-coated tabletsmg powder for concentrate for solution for infusion"
  * type = $spor-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "Biktarvy"
    * type = $spor-productNamePartType-cs#220000000002
    * type.text = "Invented name part"
  
  * part[+]
    * part = "bictegravir/emtricitabine/tenofovir alafenamide"
    * type = $spor-productNamePartType-cs#220000000003
    * type.text = "Scientific name part"
  
  * part[+]
    * part = "50 mg/200 mg/25 mg"
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