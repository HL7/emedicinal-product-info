Instance: DrugX75mgblisterx28
InstanceOf: MedicinalProductDefinitionUvEpi
Title: "Medicinal Product DrugX 75 tablet in a blister of x28 tablets"
Description: "Medicinal Product for DrugX 75 mg tablet blister x28"
Usage: #example

* id = "800a51a2-d81d-49a4-a4eb-f2417d301837"

* identifier.system = $example-prod
* identifier.value = "medicinalproduct75"

* status = $publication-status#active "Active"
* statusDate = "2018-06-23T08:38:00+02:00"
* type = $medicinal-product-type#MedicinalProduct  "Medicinal Product"
* domain = $medicinal-product-domain#Human "Human use"
* legalStatusOfSupply = $legal-status-of-supply#100000072084 "Medicinal product subject to medical prescription"

* name.productName = "DrugX 75 mg tablet blister x28"
* name
  * productName = "DrugX"
  * usage
    * country = urn:iso:std:iso:3166#FR
    * jurisdiction = urn:iso:std:iso:3166#FR
    * language = urn:ietf:bcp:47#en
  * part
    * part = "DrugX"
    * type = $example-cs#220000000002 "Invented name part"
    * type.text = "Invented name part"
    * part = "acetaminophen"
    * type = $example-cs#220000000003 "Scientific name part"
    * part = "75 mg"
    * type = $example-cs#220000000004 "Strength part"
    * part = "tablet"
    * type = $example-cs#220000000005 "Administrable dose form part"
