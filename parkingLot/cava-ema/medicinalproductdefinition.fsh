Instance: cava75mgblisterx28
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product cava 75 mg tablet in blister pack of 28 tablets"
Description: "EU/1/97/049/001 cava 75 mg tablet blister x28"
Usage: #example

* id = "800a51a2-d81d-49a4-a4eb-f2417d301837"
* identifier.system = $spor-prod
* identifier.value = "4471bb15-7f52-4fcd-b615-8674ce6eb91e"

* type = $medicinal-product-type#MedicinalProduct  "Medicinal Product"


* domain = $medicinal-product-domain#Human "Human use"


* status = $publication-status#active "Active"

* legalStatusOfSupply = EmaSporLegalStatusForTheSupply#100000072084 "Medicinal product subject to medical prescription"


* name
  * productName = "cava 75 mg tablet blister x28"
  * type = $spor-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "cava"
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
