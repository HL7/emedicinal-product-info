Instance: bundlepackageleaflet75
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Karvea 75 mg Package Leaflet"
Description: "Bundle for Karvea Package Leaflet ePI document"
Usage: #example

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "MedicinalProductDefinition/karvea75mgblisterx28"
* entry[0].resource = compositionkarvea75

// Organizations
* entry[+].fullUrl = "urn:uuid:d71bf884-90eb-47f9-81b7-fa81ecec7e75"
* entry[=].resource = sanofiaventisgroupe

// authorizations
* entry[+].fullUrl = "urn:uuid:297e405a-b6f9-4273-bc01-ae031efe47f8"
* entry[=].resource = authorizationkarvea75

// medicinal products
* entry[+].fullUrl = "urn:uuid:800a51a2-d81d-49a4-a4eb-f2417d301837"
* entry[=].resource = karvea75mgblisterx28

// packaged product
* entry[+].fullUrl = "urn:uuid:eb8392a6-2cec-4ff3-9d9e-7c5f4ae3786d"
* entry[=].resource = packagebottlex28

// administrable product
* entry[+].fullUrl = "urn:uuid:3a51ba69-3a92-4588-81d3-97946a136f14"
* entry[=].resource = adminproductkarvea75

// manufactured items
* entry[+].fullUrl = "urn:uuid:3214f286-b8ec-4ef5-bc8d-0aec39d97468"
* entry[=].resource = manitemkarvea75

// ingredients
* entry[+].fullUrl = "urn:uuid:09c13040-8fd5-4818-972d-f01d4ee169b6"
* entry[=].resource = Silicondioxide

* entry[+].fullUrl = "urn:uuid:745c01bc-936e-45ca-9880-57e97608f43e"
* entry[=].resource = irbesartan

* entry[+].fullUrl = "urn:uuid:a4b7b60c-998f-4f93-89c7-860396af0fe3"
* entry[=].resource = carnaubawax

* entry[+].fullUrl = "urn:uuid:fbf58407-83d3-42db-be3d-506b2006d431"
* entry[=].resource = Croscarmellosesodium

* entry[+].fullUrl = "urn:uuid:1c10b441-6bd3-40b8-b14b-514e7c2f79d0"
* entry[=].resource = Hypromellose

* entry[+].fullUrl = "urn:uuid:7a3c0b14-2473-4541-9e45-a24d24cceddf"
* entry[=].resource = lactosemonohydrate

* entry[+].fullUrl = "urn:uuid:ceba5cd1-321f-4bc3-b203-92d97fcf472e"
* entry[=].resource = Macrogol3000

* entry[+].fullUrl = "urn:uuid:eee155e8-e442-491d-9a82-7af3cefac57f"
* entry[=].resource = Magnesiumstearate

* entry[+].fullUrl = "urn:uuid:1cdfb0bc-55f0-43ff-b750-8f3a0d9970bd"
* entry[=].resource = Microcrystallinecellulose

* entry[+].fullUrl = "urn:uuid:a88891dc-7e9e-4d84-b462-95e53de3b6a6"
* entry[=].resource = titaniumdioxide

// Packaged Product
* entry[+].fullUrl = "urn:uuid:50621bdc-6174-4c27-85a0-02fb008435d3"
* entry[=].resource = packagebottlex28

// Clinical Use Definition - Indication
* entry[+].fullUrl = "urn:uuid:4e922ec1-a398-4a78-8381-3729422b7602"
* entry[=].resource = indication

// Clinical Use Definition - Contraindication
* entry[+].fullUrl = "urn:uuid:83f4a22f-9e5e-4941-9fdb-339a0f1f2055"
* entry[=].resource = contraindication

// Clinical Use Definition - Interaction
* entry[+].fullUrl = "urn:uuid:e60575aa-e7b3-4461-a456-d310514f4041"
* entry[=].resource = interactionmethotrexate

// Substance
* entry[+].fullUrl = "urn:uuid:da33bd51-a726-4232-aaa0-4168b9bfe249"
* entry[=].resource = substanceirbesartan
