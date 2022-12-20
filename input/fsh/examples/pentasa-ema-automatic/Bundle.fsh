
Instance: bundlepackageleaflet-pentasa
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Pentasa Package Leaflet"
Description: "Bundle for Pentasa Package Leaflet ePI document"
Usage: #example

* id = "ad70d46a-0849-40e8-9cd6-110234847576" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "xx"
* type = #document
* timestamp = "2022-12-20T14:55:58Z"

// Composition
* entry[0].fullUrl = "Composition/9492deba-6b11-4aa8-9319-110ef0c237b3"
* entry[0].resource = compositionPentasaSlowReleaseTablets1g

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/27ead25f-653b-4d58-9fa4-e020a54cf6f7"
* entry[=].resource = ingredient-for-pentasa-mesalazine 

// Ingredient

* entry[+].fullUrl = "Ingredient/48484cfa-1919-4de5-b4d3-6a14a4ea963c"
* entry[=].resource = ingredient-for-pentasa-povidone 

// Ingredient

* entry[+].fullUrl = "Ingredient/0cc2f6b1-9a62-4adf-acae-fa15f4bbee75"
* entry[=].resource = ingredient-for-pentasa-ethylcellulose 

// Ingredient

* entry[+].fullUrl = "Ingredient/94e3cbeb-5f0b-430c-9f7b-cb28e568efa8"
* entry[=].resource = ingredient-for-pentasa-magnesiumstearate 

// Ingredient

* entry[+].fullUrl = "Ingredient/9db1f131-44ac-42f9-979a-02ceb4460c15"
* entry[=].resource = ingredient-for-pentasa-talc 

// Ingredient

* entry[+].fullUrl = "Ingredient/b742f4e2-cf22-4948-9227-a90336b7e5a2"
* entry[=].resource = ingredient-for-pentasa-microcrystallinecellulose 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/ccc761c2-88d3-49fa-9b74-629804d7575a"
* entry[=].resource = substance-mesalamine 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/91c4c365-a299-492b-811d-248260ef15d9"
* entry[=].resource = ap-pentasaslowreleasetablets1g 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/bcfa018a-0f57-434f-a13e-c6b259b15dda"
* entry[=].resource = authorizationpentasa1gprolongedreleasetablet 
 

// Organization

* entry[+].fullUrl = "Organization/780ed50c-1396-42ea-9f3e-53aae36b09ff"
* entry[=].resource = org-marketingauthorisationholder-ferringsau-pentasa 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/cdb16d20-21d6-4e39-8a40-c487e64b9e76"
* entry[=].resource = ppd-pentasaslowreleasetablets1g 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/74df859c-7c4d-450d-8f0e-98db8a47d46f"
* entry[=].resource = mpPentasaSlowReleaseTablets1g 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/092d8ae5-e08b-49a0-9f78-8041187617a2"
* entry[=].resource = mid-pentasaslowreleasetablets1g 
 

