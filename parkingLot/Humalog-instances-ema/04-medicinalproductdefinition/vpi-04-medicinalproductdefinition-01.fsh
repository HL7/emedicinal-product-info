Instance: cfsb7543491765740
InstanceOf: MedicinalProductDefinition
Description: "EU/1/96/007/035 Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
Usage: #example

// UK dm+d "Humalog Mix50 KwikPen 100units/ml suspension for injection 3ml pre-filled pens"
* identifier.system = $spor-prod
* identifier.value = "123456"

* type = $medicinal-product-type#MedicinalProduct  "Medicinal Product"


* domain = $medicinal-product-domain#Human "Human use"


* status = $publication-status#active "Active"

* legalStatusOfSupply = $legal-status-of-supply#100000072084 "Medicinal product subject to medical prescription"


* name.productName = "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"

* name.type = $example-cs#220000000001 "Full name" 

 
* name.countryLanguage.country = urn:iso:std:iso:3166#eu

* name.countryLanguage.country.text = "European Union"

* name.countryLanguage.jurisdiction = urn:iso:std:iso:3166#eu

* name.countryLanguage.jurisdiction.text = "European Union"

* name.countryLanguage.language = urn:ietf:bcp:47#en

* name.countryLanguage.language.text = "English"
* name.namePart.part = "Humalog"
* name.namePart.type = $spor-rms#220000000002
* name.namePart.type.text = "Invented name part"
* name.namePart.part = "insulin lispro"
* name.namePart.type = $example-cs#220000000002 "Invented name part"
* name.namePart.type.text = "Scientific name part"
* name.namePart.part = "100 U/ml"
* name.namePart.type = $spor-rms#220000000004
* name.namePart.type.text = "Strength part"
* name.namePart.part = "Suspension for injection"
* name.namePart.type = $spor-rms#220000000005
* name.namePart.type.text = "Pharmaceutical dose form part"
