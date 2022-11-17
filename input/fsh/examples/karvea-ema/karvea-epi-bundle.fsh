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
* entry[0].resource = compositionkarvea75
* entry[=].fullUrl = "urn:uuid:0d69fdcb-33cf-407f-8209-a6529856ab4f"

// Organizations
* entry[+].resource = sanofiaventisgroupe
* entry[=].fullUrl = "urn:uuid:4b5a8535-97ed-4e7f-91a2-2360318af7b5"

// authorizations
* entry[+].resource = authorizationkarvea75
* entry[=].fullUrl = "urn:uuid:9b2c8ed8-0cd2-4287-8ec8-0e4a417619fa"

// medicinal products
* entry[+].resource = karvea75mgblisterx28
* entry[=].fullUrl = "urn:uuid:4c61d364-20b7-4639-b0ed-220b94d117dd"

// packaged product
* entry[+].resource = packagebottlex28
* entry[=].fullUrl = "urn:uuid:11e46e37-a56f-411c-afcd-30ca2b1d45e1"

// administrable product
* entry[+].resource = adminproductkarvea75
* entry[=].fullUrl = "urn:uuid:014bc23e-9cbd-4613-b41e-e429d5b7192a"

// manufactured items
* entry[+].resource = manitemkarvea75
* entry[=].fullUrl = "urn:uuid:8f24ebf3-d7ca-43b9-b6ac-278ea332f420"

// ingredients
* entry[+].resource = irbesartan // irbesartan
* entry[=].fullUrl = "urn:uuid:25214c2c-7c66-40ab-b614-57cce868095f"

* entry[+].resource = carnaubawax // carnuba wax
* entry[=].fullUrl = "urn:uuid:b8b25360-e023-434e-ab03-ecb8991597ac"

* entry[+].resource = Croscarmellosesodium // Croscarmellosesodium
* entry[=].fullUrl = "urn:uuid:740e6716-76ba-48c0-b521-7c6063a4f61e"

* entry[+].resource = Hypromellose // hypromelose
* entry[=].fullUrl = "urn:uuid:c2bf8f4d-0f93-4e87-8831-8bc8a129e2e5"

* entry[+].resource = lactosemonohydrate // lactosemonohydrate
* entry[=].fullUrl = "urn:uuid:5bd005e4-d37d-44d3-be5a-25b2c7d01c04"

* entry[+].resource = Macrogol3000 // Macrogol3000
* entry[=].fullUrl = "urn:uuid:37d50439-38e4-4519-85c2-1f60df0001db"

* entry[+].resource = Magnesiumstearate // Magnesiumstearate
* entry[=].fullUrl = "urn:uuid:aee472ec-f771-491d-a51d-1efb2f5400e6"

* entry[+].resource = Microcrystallinecellulose // Microcrystallinecellulose
* entry[=].fullUrl = "urn:uuid:d0d9ecf7-355a-41cf-bcb2-f38e7ffbbd3a"

* entry[+].resource = Silicondioxide // Silicondioxide
* entry[=].fullUrl = "urn:uuid:a0cfe6ba-0784-43c8-88ca-45688277eb5d"

* entry[+].resource = titaniumdioxide // titaniumdioxide
* entry[=].fullUrl = "urn:uuid:8953c879-2578-457a-ae12-f51e68195755"
