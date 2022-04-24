Instance: 117616c7-3bcc-4665-8e12-0e93447e679e
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

* legalStatusOfSupply = $spor-rms#100000072084
* legalStatusOfSupply.text = "Medicinal product subject to medical prescription"

* name.productName = "Aromasin (exemestane) Tablets 25 mg"

* name.type = $spor-rms#220000000001

* name.type.text = "Full name"
* name.countryLanguage.country = urn:iso:std:iso:3166#jp

* name.countryLanguage.country.text = "Japan"

* name.countryLanguage.jurisdiction = urn:iso:std:iso:3166#jp

* name.countryLanguage.jurisdiction.text = "Japan"

* name.countryLanguage.language = urn:iso:std:iso:639-1#ja

* name.countryLanguage.language.text = "Japanese"
* name.namePart.part = "Aromasin"
* name.namePart.type = $spor-rms#220000000002
* name.namePart.type.text = "Invented name part"

* name.namePart.part = "exemestane"
* name.namePart.type = $spor-rms#220000000003
* name.namePart.type.text = "Scientific name part"

* name.namePart.part = "25 mg"
* name.namePart.type = $spor-rms#220000000004
* name.namePart.type.text = "Strength part"

* name.namePart.part = "Tablet"
* name.namePart.type = $spor-rms#220000000005
* name.namePart.type.text = "Pharmaceutical dose form part"
