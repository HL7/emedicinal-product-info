
Instance: bundlepackageleaflet-pentasa
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Pentasa Package Leaflet"
Description: "Bundle for Pentasa Package Leaflet ePI document"
Usage: #example

* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "xx"
* type = #document
* timestamp = "2023-01-14T16:01:46Z"

// Composition
* entry[0].fullUrl = "Composition/compositionPentasaSlowReleaseTablets1g"
* entry[0].resource = compositionPentasaSlowReleaseTablets1g

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-pentasa-mesalazine"
* entry[=].resource = ingredient-for-pentasa-mesalazine 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-pentasa-povidone"
* entry[=].resource = ingredient-for-pentasa-povidone 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-pentasa-ethylcellulose"
* entry[=].resource = ingredient-for-pentasa-ethylcellulose 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-pentasa-magnesiumstearate"
* entry[=].resource = ingredient-for-pentasa-magnesiumstearate 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-pentasa-talc"
* entry[=].resource = ingredient-for-pentasa-talc 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-pentasa-microcrystallinecellulose"
* entry[=].resource = ingredient-for-pentasa-microcrystallinecellulose 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/substance-mesalamine"
* entry[=].resource = substance-mesalamine 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/ap-pentasaslowreleasetablets1g"
* entry[=].resource = ap-pentasaslowreleasetablets1g 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/authorizationpentasa1gprolongedreleasetablet"
* entry[=].resource = authorizationpentasa1gprolongedreleasetablet 
 

// Organization

* entry[+].fullUrl = "Organization/org-marketingauthorisationholder-ferringsau-pentasa"
* entry[=].resource = org-marketingauthorisationholder-ferringsau-pentasa 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/ppd-pentasaslowreleasetablets1g"
* entry[=].resource = ppd-pentasaslowreleasetablets1g 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/mpPentasaSlowReleaseTablets1g"
* entry[=].resource = mpPentasaSlowReleaseTablets1g 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/mid-pentasaslowreleasetablets1g"
* entry[=].resource = mid-pentasaslowreleasetablets1g 
 

