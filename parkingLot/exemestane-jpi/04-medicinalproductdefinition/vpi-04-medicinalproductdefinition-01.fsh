Instance: medicinalproduct25mg
InstanceOf: MedicinalProductDefinitionUvEpi
Description: "Aromasin (exemestane) Tablets 25 mg"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "123456"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct
* type.text = "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human
* domain.text = "Human use"

* status = http://hl7.org/fhir/publication-status#active "Active"

* legalStatusOfSupply = EmaSporLegalStatusForTheSupply#100000072084 "Medicinal product subject to medical prescription"


* name
  * productName = "Aromasin (exemestane) Tablets 25 mg"
  * type = $spor-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "Aromasin"
    * type = $spor-productNamePartType-cs#220000000002
    * type.text = "Invented name part"
  
  * part[+]
    * part = "exemestane"
    * type = $spor-productNamePartType-cs#220000000003
    * type.text = "Scientific name part"
  
  * part[+]
    * part = "25 mg"
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