
Instance: mpparecetamolamn
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product parecetamol-amn"
Description: "EU/1/97/049/001 parecetamol-amn"
Usage: #example


* id = "abdafe81-3319-4f71-a2da-173c4ebbd832" 
* identifier.system = $spor-prod
* identifier.value = "cc"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "active"





* legalStatusOfSupply = $spor-rms#100000000000 "Medicinal product subject to medical prescription"


* name
  * productName = "parecetamol-amn"
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
    * country = urn:iso:std:iso:3166#DK ""
    * jurisdiction = urn:iso:std:iso:3166#DK ""
    * language = urn:ietf:bcp:47#en  "English"