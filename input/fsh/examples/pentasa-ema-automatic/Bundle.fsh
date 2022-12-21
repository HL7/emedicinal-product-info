
Instance: bundlepackageleaflet-pentasa
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Pentasa Package Leaflet"
Description: "Bundle for Pentasa Package Leaflet ePI document"
Usage: #example

* id = "120f64e5-290d-4e48-9165-70a271026135" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "xx"
* type = #document
* timestamp = "2022-12-21T14:58:02Z"

// Composition
* entry[0].fullUrl = "Composition/9683019e-5ffc-4923-8a43-c307ce3e2af2"
* entry[0].resource = compositionPentasaSlowReleaseTablets1g

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/1021e09d-720c-4226-ad3c-3bff60ebc4b8"
* entry[=].resource = ingredient-for-pentasa-mesalazine 

// Ingredient

* entry[+].fullUrl = "Ingredient/0de44f62-b6d6-49f8-8375-74007e0cecbe"
* entry[=].resource = ingredient-for-pentasa-povidone 

// Ingredient

* entry[+].fullUrl = "Ingredient/1559d15b-10ec-40e5-818f-cd162c78fb97"
* entry[=].resource = ingredient-for-pentasa-ethylcellulose 

// Ingredient

* entry[+].fullUrl = "Ingredient/5f936f42-68d6-4791-9fcb-40a3db047f69"
* entry[=].resource = ingredient-for-pentasa-magnesiumstearate 

// Ingredient

* entry[+].fullUrl = "Ingredient/10626aa6-b768-43b1-a78c-03a5068e3c2a"
* entry[=].resource = ingredient-for-pentasa-talc 

// Ingredient

* entry[+].fullUrl = "Ingredient/ec708922-e6d2-4e04-860f-17c2c214dd29"
* entry[=].resource = ingredient-for-pentasa-microcrystallinecellulose 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/9afe8c34-20db-4dd2-aaee-52e8f04f099e"
* entry[=].resource = substance-mesalamine 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/5b2d73df-f9d9-4b2f-9ca4-17bd9dc0fd28"
* entry[=].resource = ap-pentasaslowreleasetablets1g 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/98aef428-f9e0-4688-88f3-17980be8e319"
* entry[=].resource = authorizationpentasa1gprolongedreleasetablet 
 

// Organization

* entry[+].fullUrl = "Organization/8a72ce32-881d-4e92-9aa2-23871ed1c1da"
* entry[=].resource = org-marketingauthorisationholder-ferringsau-pentasa 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/5802e6c8-c8c7-4194-bbc3-c002cc5462e0"
* entry[=].resource = ppd-pentasaslowreleasetablets1g 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/53792d15-e341-46ec-afb2-3f09eb76182a"
* entry[=].resource = mpPentasaSlowReleaseTablets1g 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/140068ae-1de7-4a37-9a3d-58f60064aa34"
* entry[=].resource = mid-pentasaslowreleasetablets1g 
 

