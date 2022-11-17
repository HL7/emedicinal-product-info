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

// authorizations
* entry[+].resource = authorizationkarvea75

// medicinal products
* entry[+].resource = karvea75mgblisterx28

// packaged product
* entry[+].resource = packagebottlex28

// administrable product
* entry[+].resource = adminproductkarvea75

// manufactured items
* entry[+].resource = manitemkarvea75

// ingredients
* entry[+].resource = irbesartan // irbesartan
* entry[+].resource = carnaubawax // carnuba wax
* entry[+].resource = Croscarmellosesodium // Croscarmellosesodium
* entry[+].resource = Hypromellose // hypromelose
* entry[+].resource = lactosemonohydrate // lactosemonohydrate
* entry[+].resource = Macrogol3000 // Macrogol3000
* entry[+].resource = Magnesiumstearate // Magnesiumstearate
* entry[+].resource = Microcrystallinecellulose // Microcrystallinecellulose
* entry[+].resource = Silicondioxide // Silicondioxide
* entry[+].resource = titaniumdioxide // titaniumdioxide

