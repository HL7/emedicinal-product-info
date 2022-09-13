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

* name.type.text = "Full name"
* name.countryLanguage.country = urn:iso:std:iso:3166#eu

* name.countryLanguage.country.text = "European Union"

* name.countryLanguage.jurisdiction = urn:iso:std:iso:3166#eu

* name.countryLanguage.jurisdiction.text = "European Union"

* name.countryLanguage.language = urn:ietf:bcp:47#en

* name.countryLanguage.language.text = "English"
* name.namePart.part = "Karvea"
* name.namePart.type = $spor-rms#220000000002
* name.namePart.type.text = "Invented name part"
* name.namePart.part = "irbesartan"
* name.namePart.type = $spor-rms#220000000003
* name.namePart.type.text = "Scientific name part"
* name.namePart.part = "75 mg"
* name.namePart.type = $spor-rms#220000000004
* name.namePart.type.text = "Strength part"
* name.namePart.part = "tablet"
* name.namePart.type = $spor-rms#220000000005
* name.namePart.type.text = "Pharmaceutical dose form part"
