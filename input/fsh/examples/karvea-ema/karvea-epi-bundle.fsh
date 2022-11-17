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
* entry[=].fullUrl = "compositionkarvea75"

// Organizations
* entry[+].resource = sanofiaventisgroupe
* entry[=].fullUrl = "sanofiaventisgroupe"

// authorizations
* entry[+].resource = authorizationkarvea75
* entry[=].fullUrl = "authorizationkarvea75"

// medicinal products
* entry[+].resource = karvea75mgblisterx28
* entry[=].fullUrl = "karvea75mgblisterx28"

// packaged product
* entry[+].resource = packagebottlex28
* entry[=].fullUrl = "packagebottlex28"

// administrable product
* entry[+].resource = adminproductkarvea75
* entry[=].fullUrl = "adminproductkarvea75"

// manufactured items
* entry[+].resource = manitemkarvea75
* entry[=].fullUrl = "manitemkarvea75"

// ingredients
* entry[+].resource = irbesartan
* entry[=].fullUrl = "irbesartan"

* entry[+].resource = carnaubawax
* entry[=].fullUrl = "carnaubawax"

* entry[+].resource = Croscarmellosesodium
* entry[=].fullUrl = "Croscarmellosesodium"

* entry[+].resource = Hypromellose
* entry[=].fullUrl = "Hypromellose"

* entry[+].resource = lactosemonohydrate
* entry[=].fullUrl = "lactosemonohydrate"

* entry[+].resource = Macrogol3000
* entry[=].fullUrl = "Macrogol3000"

* entry[+].resource = Magnesiumstearate
* entry[=].fullUrl = "Magnesiumstearate"

* entry[+].resource = Microcrystallinecellulose
* entry[=].fullUrl = "Microcrystallinecellulose"

* entry[+].resource = Silicondioxide
* entry[=].fullUrl = "Silicondioxide"

* entry[+].resource = titaniumdioxide
* entry[=].fullUrl = "titaniumdioxide"
