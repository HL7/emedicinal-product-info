
Instance: bundlepackageleaflet-pentasa
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Pentasa Package Leaflet"
Description: "Bundle for Pentasa Package Leaflet ePI document"
Usage: #example

* id = "10fbad84-620b-4da3-b4c8-c224db297c32" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "xx"
* type = #document
* timestamp = "2023-01-14T06:51:01Z"

// Composition
* entry[0].fullUrl = "Composition/91ec2a60-0696-4a2a-a2b2-58aa66ee5fc5"
* entry[0].resource = compositionPentasaSlowReleaseTablets1g

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/fbbd18e7-3416-444a-b9b9-d4fdad92aac7"
* entry[=].resource = ingredient-for-pentasa-mesalazine 

// Ingredient

* entry[+].fullUrl = "Ingredient/f54f38dd-8aac-4ba8-8fb1-9ac6a42966bd"
* entry[=].resource = ingredient-for-pentasa-povidone 

// Ingredient

* entry[+].fullUrl = "Ingredient/fe8fddd5-7468-49d7-90b4-55c29644c204"
* entry[=].resource = ingredient-for-pentasa-ethylcellulose 

// Ingredient

* entry[+].fullUrl = "Ingredient/8b899acf-de86-4d1d-b084-85e5df0fa209"
* entry[=].resource = ingredient-for-pentasa-magnesiumstearate 

// Ingredient

* entry[+].fullUrl = "Ingredient/1a660200-197d-4800-8c68-da99c2f4f9fc"
* entry[=].resource = ingredient-for-pentasa-talc 

// Ingredient

* entry[+].fullUrl = "Ingredient/641ff9b8-4a08-45f6-9b03-90b75108c34d"
* entry[=].resource = ingredient-for-pentasa-microcrystallinecellulose 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/bc786412-ff65-47da-aafc-02495f60405f"
* entry[=].resource = substance-mesalamine 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/85e3245d-73ba-42dd-bf8d-baacdf0dd9f2"
* entry[=].resource = ap-pentasaslowreleasetablets1g 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/9cefc234-8032-4f38-a2ad-f8f20aad9c97"
* entry[=].resource = authorizationpentasa1gprolongedreleasetablet 
 

// Organization

* entry[+].fullUrl = "Organization/b99ebc34-0214-4728-833b-0c7486ba4a0d"
* entry[=].resource = org-marketingauthorisationholder-ferringsau-pentasa 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/07c0f4b6-1c67-47ae-9368-dd6278a14919"
* entry[=].resource = ppd-pentasaslowreleasetablets1g 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/e54437f8-2b25-454d-ac72-80d28bfedab3"
* entry[=].resource = mpPentasaSlowReleaseTablets1g 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/bd6df1fe-bbdd-44a3-8f13-895f5608aa22"
* entry[=].resource = mid-pentasaslowreleasetablets1g 
 

