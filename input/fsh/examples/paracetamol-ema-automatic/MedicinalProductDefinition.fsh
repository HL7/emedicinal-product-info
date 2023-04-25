
Instance: mpa975b7e209ea5c4c3bf8040a42b86fbd
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product DOLOCATIL 1 g tablets"
Description: "DOLOCATIL 1 g tablets"
Usage: #example

 
* identifier[+].system = "https://cima.aemps.es/ids"
* identifier[=].value = "72.741" 
* identifier[+].system = "https://www.who-umc.org/phpid"
* identifier[=].value = "0xE857DA811B4A6F3BD57810C45D2EA1ED"
* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "active"





* legalStatusOfSupply = $spor-rms#100000000000 "Medicinal product subject to medical prescription"


* name
  * productName = "DOLOCATIL 1 g tablets"
  * type = $spor-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "Dolocatil"
    * type = $spor-productNamePartType-cs#220000000002
    * type.text = "Invented name part"
  
  * part[+]
    * part = "paracetamol"
    * type = $spor-productNamePartType-cs#220000000003
    * type.text = "Scientific name part"
  
  * part[+]
    * part = "1000 mg"
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