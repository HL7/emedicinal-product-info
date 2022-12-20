
Instance: mpCalcioVitaminaD3ROVI1000mg880UIcomprimidosefervescentes
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product Calcio/Vitamina D3 ROVI 1000 mg/880 UI comprimidos efervescentes"
Description: "EU/1/97/049/001 Calcio/Vitamina D3 ROVI 1000 mg/880 UI comprimidos efervescentes"
Usage: #example


* id = "01e5bc88-1ac1-4394-80bf-21ddc02aff91" 
* identifier.system = $spor-prod
* identifier.value = "xx"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "active"





* legalStatusOfSupply = $spor-rms#100000000000 "Medicinal product subject to medical prescription"


* name
  * productName = "Calcio/Vitamina D3 ROVI 1000 mg/880 UI comprimidos efervescentes"
  * type = $spor-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "Calcio/Vitamina"
    * type = $spor-productNamePartType-cs#220000000002
    * type.text = "Invented name part"
  
  * part[+]
    * part = "Calcium carbonate/Vitamin D3"
    * type = $spor-productNamePartType-cs#220000000003
    * type.text = "Scientific name part"
  
  * part[+]
    * part = "2500 mg"
    * type = $spor-productNamePartType-cs#220000000004
    * type.text = "Strength part"
  
  * part[+]
    * part = "Effervescent tablet"
    * type = $spor-productNamePartType-cs#220000000005
    * type.text = "Pharmaceutical dose form part"
  
  * usage
    * country = urn:iso:std:iso:3166#ES ""
    * jurisdiction = urn:iso:std:iso:3166#ES ""
    * language = urn:ietf:bcp:47#en  "English"