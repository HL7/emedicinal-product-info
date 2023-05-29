Instance: bundlepackageleaflet75
InstanceOf: BundleUvEpi
Usage: #example
Title: "Vulcan DrugX FHIR Package Insert EMA v2"
Description: "Instance of DrugX package insert for Connectathon testing"

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "EU/0/00/000/000"

* meta
  * versionId = "1"
  * lastUpdated = "2018-06-23T08:38:00+02:00"

* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "urn:uuid:fe63fd6a-afe8-4b61-a203-0cf4a69ffb60"
* entry[0].resource = compositionDrugX75

// Organization
* entry[+].fullUrl = "urn:uuid:d71bf884-90eb-47f9-81b7-fa81ecec7e75"
* entry[=].resource = acmeinc

// authorization
* entry[+].fullUrl = "urn:uuid:297e405a-b6f9-4273-bc01-ae031efe47f8"
* entry[=].resource = authorizationDrugX75

// medicinal product
* entry[+].fullUrl = "urn:uuid:800a51a2-d81d-49a4-a4eb-f2417d301837"
* entry[=].resource = DrugX75mgblisterx28

// packaged product
* entry[+].fullUrl = "urn:uuid:eb8392a6-2cec-4ff3-9d9e-7c5f4ae3786d"
* entry[=].resource = packagebottlex28

// administrable product
* entry[+].fullUrl = "urn:uuid:373b9bf3-1fae-47a1-a7cd-230106def069"
* entry[=].resource = adminproductDrugX75

// manufactured item
* entry[+].fullUrl = "urn:uuid:3214f286-b8ec-4ef5-bc8d-0aec39d97468"
* entry[=].resource = manitemDrugX75

// ingredients 7
* entry[+].fullUrl = "urn:uuid:745c01bc-936e-45ca-9880-57e97608f43e"
* entry[=].resource = acetaminophen75

// 8
* entry[+].fullUrl = "urn:uuid:09c13040-8fd5-4818-972d-f01d4ee169b6"
* entry[=].resource = Silicondioxide

// 9
* entry[+].fullUrl = "urn:uuid:a4b7b60c-998f-4f93-89c7-860396af0fe3"
* entry[=].resource = carnaubawax

//10
* entry[+].fullUrl = "urn:uuid:fbf58407-83d3-42db-be3d-506b2006d431"
* entry[=].resource = Croscarmellosesodium

// 11
* entry[+].fullUrl = "urn:uuid:1c10b441-6bd3-40b8-b14b-514e7c2f79d0"
* entry[=].resource = Hypromellose

// 12
* entry[+].fullUrl = "urn:uuid:7a3c0b14-2473-4541-9e45-a24d24cceddf"
* entry[=].resource = lactosemonohydrate

// 13
* entry[+].fullUrl = "urn:uuid:ceba5cd1-321f-4bc3-b203-92d97fcf472e"
* entry[=].resource = Macrogol3000

// 14
* entry[+].fullUrl = "urn:uuid:eee155e8-e442-491d-9a82-7af3cefac57f"
* entry[=].resource = Magnesiumstearate

// 15
* entry[+].fullUrl = "urn:uuid:1cdfb0bc-55f0-43ff-b750-8f3a0d9970bd"
* entry[=].resource = Microcrystallinecellulose

// 16
* entry[+].fullUrl = "urn:uuid:a88891dc-7e9e-4d84-b462-95e53de3b6a6"
* entry[=].resource = titaniumdioxide

// 17
// Clinical Use Definition - Indication
* entry[+].fullUrl = "urn:uuid:4e922ec1-a398-4a78-8381-3729422b7602"
* entry[=].resource = indication

// 18
// Clinical Use Definition - Contraindication
* entry[+].fullUrl = "urn:uuid:83f4a22f-9e5e-4941-9fdb-339a0f1f2055"
* entry[=].resource = contraindication

// Clinical Use Definition - Indication
* entry[+].fullUrl = "urn:uuid:bac1d528-6430-4310-bde6-b8b3471ce35a"
* entry[=].resource = indication

// Clinical Use Definition - Interaction
* entry[+].fullUrl = "urn:uuid:e60575aa-e7b3-4461-a456-d310514f4041"
* entry[=].resource = interaction //methotrexate

// Clinical Use Definition - Undesirable Effect
* entry[+].fullUrl = "urn:uuid:4312f8ec-43b6-4b25-9fca-d61a1188bfea"
* entry[=].resource = UndesirableEffect

// Clinical Use Definition - Warning
* entry[+].fullUrl = "urn:uuid:ac21a804-cafa-41ff-b644-a14c8003edeb"
* entry[=].resource = warning //hypotension

// Substance
* entry[+].fullUrl = "urn:uuid:da33bd51-a726-4232-aaa0-4168b9bfe249"
* entry[=].resource = substanceacetaminophen
