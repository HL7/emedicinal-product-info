
Instance: mpMIRTAZAPINeCINFA30mgCoatedTablet
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product MIRTAZAPINe CINFA 30 mg Coated Tablet"
Description: "EU/1/97/049/001 MIRTAZAPINe CINFA 30 mg Coated Tablet"
Usage: #example


* id = "f5505418-c7d5-435f-9e55-ac5f03fc6f7f" 
* identifier.system = $spor-prod
* identifier.value = "cc"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human "Human use"

* status = http://hl7.org/fhir/publication-status#active "active"





* legalStatusOfSupply = $spor-rms#100000000000 ""


* name
  * productName = "MIRTAZAPINe CINFA 30 mg Coated Tablet"
  * type = $spor-productNamePartType-cs#220000000001
    * text = "Full name"
  
  * part[0]
    * part = "Mirtazapine Cinfa"
    * type = $spor-productNamePartType-cs#220000000002
    * type.text = "Invented name part"
  
  * part[+]
    * part = "Mirtazapine"
    * type = $spor-productNamePartType-cs#220000000003
    * type.text = "Scientific name part"
  
  * part[+]
    * part = "30 mg"
    * type = $spor-productNamePartType-cs#220000000004
    * type.text = "Strength part"
  
  * part[+]
    * part = "coated tablet"
    * type = $spor-productNamePartType-cs#220000000005
    * type.text = "Pharmaceutical dose form part"
  
  * usage
    * country = urn:iso:std:iso:3166#ES ""
    * jurisdiction = urn:iso:std:iso:3166#ES ""
    * language = urn:ietf:bcp:47#en  "English"