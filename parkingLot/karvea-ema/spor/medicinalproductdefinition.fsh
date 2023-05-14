Instance: karvea75mgblisterx28
InstanceOf: MedicinalProductDefinition
Description: "EU/1/97/049/001 Karvea 75 mg tablet blister x28"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "123456"

* type = http://hl7.org/fhir/medicinal-product-type#MedicinalProduct
* type.text = "Medicinal Product"

* domain = http://hl7.org/fhir/medicinal-product-domain#Human
* domain.text = "Human use"

* status = http://hl7.org/fhir/publication-status#active "Active"

* legalStatusOfSupply = $spor-rms#100000072084
* legalStatusOfSupply.text = "Medicinal product subject to medical prescription"

* name.productName = "Karvea 75 mg tablet blister x28"

* name.type = $spor-rms#220000000001

* name
  * type.text = "Full name"
  * usage
    * country = urn:iso:std:iso:3166#eu
    * jurisdiction = urn:iso:std:iso:3166#eu
    * language = urn:ietf:bcp:47#en
  * part
    * part = "Karvea"
    * type = $spor-rms#220000000002
    * type.text = "Invented name part"
    * part = "irbesartan"
    * type = $spor-rms#220000000003
    * type.text = "Scientific name part"
    * part = "75 mg"
    * type = $spor-rms#220000000004
    * type.text = "Strength part"
    * part = "tablet"
    * type = $spor-rms#220000000005
    * type.text = "Pharmaceutical dose form part"
