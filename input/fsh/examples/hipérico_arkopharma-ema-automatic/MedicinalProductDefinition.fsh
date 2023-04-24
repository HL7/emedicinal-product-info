
Instance: mpaf8d2f6e4772c29a8ef9fbb165e80d28
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product HIPÉRICO ARKOPHARMA cápsulas duras"
Description: "HIPÉRICO ARKOPHARMA cápsulas duras"
Usage: #example

 
* identifier[+].system = "https://cima.aemps.es/ids"
* identifier[=].value = "79963"
* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "active"





* legalStatusOfSupply = $spor-rms#100000000000 "Medicinal product subject to medical prescription"


* name
  * productName = "HIPÉRICO ARKOPHARMA cápsulas duras"
  * type = $spor-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "HIPÉRICO ARKOPHARMA"
    * type = $spor-productNamePartType-cs#220000000002
    * type.text = "Invented name part"
  
  * part[+]
    * part = "Hypericum perforatum L."
    * type = $spor-productNamePartType-cs#220000000003
    * type.text = "Scientific name part"
  
  * part[+]
    * part = "175 mg"
    * type = $spor-productNamePartType-cs#220000000004
    * type.text = "Strength part"
  
  * part[+]
    * part = "hard capsules"
    * type = $spor-productNamePartType-cs#220000000005
    * type.text = "Pharmaceutical dose form part"
  
  * usage
    * country = urn:iso:std:iso:3166#ES ""
    * jurisdiction = urn:iso:std:iso:3166#ES ""
    * language = urn:ietf:bcp:47#en  "English"