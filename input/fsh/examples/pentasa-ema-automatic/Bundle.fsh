
Instance: bundlepackageleaflet-pentasa
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Pentasa Package Leaflet"
Description: "Bundle for Pentasa Package Leaflet ePI document"
Usage: #example

* id = "b75a6db6-6b5b-42c9-8c01-77c33a274c95" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "xx"
* type = #document
* timestamp = "2022-12-19T16:57:21Z"

// Composition
* entry[0].fullUrl = "Composition/6b7a16be-f094-41fd-9372-8c1aad90ddfc"
* entry[0].resource = compositionPentasaSlowReleaseTablets1g

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/375b4bdb-3fb0-451b-9ae8-0b8ab1ea1913"
* entry[=].resource = ingredient-for-pentasa-mesalazine 

// Ingredient

* entry[+].fullUrl = "Ingredient/d70e7361-0219-4f85-a456-1a0e6f2b62b4"
* entry[=].resource = ingredient-for-pentasa-povidone 

// Ingredient

* entry[+].fullUrl = "Ingredient/47304b03-b02e-4f42-94fa-ea5b6726aef9"
* entry[=].resource = ingredient-for-pentasa-ethylcellulose 

// Ingredient

* entry[+].fullUrl = "Ingredient/74266063-1898-4b8e-b0cc-1e5de68e47bc"
* entry[=].resource = ingredient-for-pentasa-magnesiumstearate 

// Ingredient

* entry[+].fullUrl = "Ingredient/edf038a3-f4b5-43a0-91a9-d645b9c1b78d"
* entry[=].resource = ingredient-for-pentasa-talc 

// Ingredient

* entry[+].fullUrl = "Ingredient/e5dc185a-5bb6-41f3-aae9-2eadb0290acd"
* entry[=].resource = ingredient-for-pentasa-microcrystallinecellulose 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/b2f3f32e-6920-47d3-ae9d-a606e4bd55de"
* entry[=].resource = substance-mesalamine 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/775165d2-759c-46d3-a342-efb135ff438d"
* entry[=].resource = ap-pentasaslowreleasetablets1g 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/81fabf64-8ceb-4983-a96e-02dafa296ed2"
* entry[=].resource = authorizationpentasa1gprolongedreleasetablet 
 

// Organization

* entry[+].fullUrl = "Organization/af8eadb6-8f58-40a9-9c39-c369824fb09e"
* entry[=].resource = org-marketingauthorisationholder-ferringsau-pentasa 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/dc59893c-2ad7-4366-95e2-18fb2e8eceb8"
* entry[=].resource = ppd-pentasaslowreleasetablets1g 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/d2b4e8da-15b3-4132-8600-09ede8546895"
* entry[=].resource = mpPentasaSlowReleaseTablets1g 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/c4f9748d-4e95-4556-bb1f-ba99ff5e2a94"
* entry[=].resource = mid-pentasaslowreleasetablets1g 
 

