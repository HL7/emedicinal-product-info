Instance: f1b25777-da7a-4a35-98af-ab18d3246d54
InstanceOf: MedicinalProductDefinitionUvEpi
Description: "Aromasin (exemestane) Tablets 25 mg"
Usage: #example

* identifier.system = $spor-prod
* identifier.value = "123456"

* type = $medicinal-product-type#MedicinalProduct  "Medicinal Product"


* domain = $medicinal-product-domain#Human "Human use"


* status = $publication-status#active "Active"

* legalStatusOfSupply = $legal-status-of-supply#100000072084 "Medicinal product subject to medical prescription"


* name.productName = "Aromasin (exemestane) Tablets 25 mg"

* name.type = $example-cs#220000000001 "Full name" 

 
* name.countryLanguage.country = urn:iso:std:iso:3166#us

* name.countryLanguage.country.text = "United States of America"

* name.countryLanguage.jurisdiction = urn:iso:std:iso:3166#us

* name.countryLanguage.jurisdiction.text = "United States of America"

* name.countryLanguage.language = urn:iso:std:iso:639-1#en

* name.countryLanguage.language.text = "English"
* name.namePart.part = "Aromasin"
* name.namePart.type = $spor-rms#220000000002
* name.namePart.type.text = "Invented name part"

* name.namePart.part = "exemestane"
* name.namePart.type = $example-cs#220000000002 "Invented name part"
* name.namePart.type.text = "Scientific name part"

* name.namePart.part = "25 mg"
* name.namePart.type = $spor-rms#220000000004
* name.namePart.type.text = "Strength part"

* name.namePart.part = "Tablet"
* name.namePart.type = $spor-rms#220000000005
* name.namePart.type.text = "Pharmaceutical dose form part"
