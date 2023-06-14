Instance: medicinalproduct25mg
InstanceOf: MedicinalProductDefinitionUvEpi
Description: "Aromasin (exemestane) Tablets 25 mg"
Usage: #example

* identifier.system = $example-prod
* identifier.value = "123456"

* type = $medicinal-product-type#MedicinalProduct  "Medicinal Product"


* domain = $medicinal-product-domain#Human "Human use"


* status = $publication-status#active "Active"

* legalStatusOfSupply = $legal-status-of-supply#100000072084 "Medicinal product subject to medical prescription"


* name
  * productName = "Aromasin (exemestane) Tablets 25 mg"
  * type = $example-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "Aromasin"
    * type = $example-productNamePartType-cs#220000000002
    * type.text = "Invented name part"
  
  * part[+]
    * part = "exemestane"
    * type = $example-productNamePartType-cs#220000000003
    * type.text = "Scientific name part"
  
  * part[+]
    * part = "25 mg"
    * type = $example-productNamePartType-cs#220000000004
    * type.text = "Strength part"
  
  * part[+]
    * part = "tablet"
    * type = $example-productNamePartType-cs#220000000005
    * type.text = "Pharmaceutical dose form part"
  
  * usage
    * country = urn:iso:std:iso:3166#DK
    * jurisdiction = urn:iso:std:iso:3166#DK
    * language = urn:ietf:bcp:47#en