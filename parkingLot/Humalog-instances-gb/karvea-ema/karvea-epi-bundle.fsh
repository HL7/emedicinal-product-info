Instance: bundlepackageleaflet75
InstanceOf: Bundle
Usage: #example
Title: "Vulcan Humalog FHIR Package Insert EMA v2"
Description: "Instance of Humalog package insert for Connectathon testing"

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[+].resource = composition-karvea-75

// Organizations
* entry[+].resource = sanofi-aventis-groupe

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
* entry[+].resource = irbesartan
* entry[+].resource = lactosemonohydrate
* entry[+].resource = Hypromellose
* entry[+].resource = carnaubawax
* entry[+].resource = titaniumdioxide
* entry[+].resource = Silicondioxide
* entry[+].resource = Macrogol3000
* entry[+].resource = Microcrystallinecellulose
* entry[+].resource = Magnesiumstearate
* entry[+].resource = Croscarmellosesodium
