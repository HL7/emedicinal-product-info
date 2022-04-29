Instance: 6200a0a8-2fc1-46d4-aa66-2a98ac0cabc2
InstanceOf: MedicinalProductDefinition
Description: "PLGB 14895/0253 Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
Title: "PLGB 14895/0253 Humalog Mix50 Insulin KwikPen, 3ml pre-fill"
Usage: #example

// UK dm+d "Humalog Mix50 KwikPen 100units/ml suspension for injection 3ml pre-filled pens"
* identifier.system = "$sct"
* identifier.value = "13884911000001102"

* type = $sct#722371000000104 
* type.text = "Marketing"

* domain = $sct#278412004
* domain.text = "Human"

* status = http://hl7.org/fhir/publication-status#active "Active"

* legalStatusOfSupply = $sct#8941601000001108
* legalStatusOfSupply.text = "Medicinal product subject to medical prescription"

* name.productName = "Humalog Mix50 Insulin KwikPen, 3ml pre-fill"

* name.type = $sct#9894401000001107

* name.type.text = "Full name"
* name.countryLanguage.country = urn:iso:std:iso:3166#gb

* name.countryLanguage.country.text = "UNITED KINGDOM OF GREAT BRITAIN AND NORTHERN IRELAND"

* name.countryLanguage.jurisdiction = urn:iso:std:iso:3166#gb

* name.countryLanguage.jurisdiction.text = "UNITED KINGDOM OF GREAT BRITAIN AND NORTHERN IRELAND"

* name.countryLanguage.language = urn:ietf:bcp:47#en

* name.countryLanguage.language.text = "English"
* name.namePart.part = "Humalog KwikPen"
* name.namePart.type = $sct#9894201000001108
* name.namePart.type.text = "Invented name part"

* name.namePart.part = "insulin lispro"
* name.namePart.type = $sct#36047811000001104
* name.namePart.type.text = "Scientific name part"

* name.namePart.part = "100 U/ml"
* name.namePart.type = $sct#258948008
* name.namePart.type.text = "Strength part"

* name.namePart.part = "Suspension for injection"
* name.namePart.type = $sct#385220007
* name.namePart.type.text = "Pharmaceutical dose form part"
