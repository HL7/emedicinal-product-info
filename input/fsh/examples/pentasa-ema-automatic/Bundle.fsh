
Instance: bundlepackageleaflet-pentasa
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Pentasa Package Leaflet"
Description: "Bundle for Pentasa Package Leaflet ePI document"
Usage: #example

* id = "a7c54631-a072-4ef5-8187-13b017dd551e" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "xx"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "Composition/0314ccee-d7e2-4fd5-942c-8f0cf3536bb6"
* entry[0].resource = compositionPentasaSlowReleaseTablets1g

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/8f251b0a-1423-4d8b-a3ef-9b146a6fe01c"
* entry[=].resource = ingredient-for-pentasa-mesalazine 

// Ingredient
* entry[+].fullUrl = "Ingredient/5401aa24-0831-4468-a38b-5574ccacf2ce"
* entry[=].resource = ingredient-for-pentasa-povidone 

// Ingredient
* entry[+].fullUrl = "Ingredient/92bd7c1e-26ca-49a5-8eb0-d70b05d03b44"
* entry[=].resource = ingredient-for-pentasa-ethylcellulose 

// Ingredient
* entry[+].fullUrl = "Ingredient/c33c5f43-4449-4cef-a306-ff4628c84d1e"
* entry[=].resource = ingredient-for-pentasa-magnesiumstearate 

// Ingredient
* entry[+].fullUrl = "Ingredient/b80d7261-777f-4b5e-8d44-0e13071edd7f"
* entry[=].resource = ingredient-for-pentasa-talc 

// Ingredient
* entry[+].fullUrl = "Ingredient/de2dd6f2-98b1-4fc9-b7e4-1cd379ffd22d"
* entry[=].resource = ingredient-for-pentasa-microcrystallinecellulose 
 

// Substance
* entry[+].fullUrl = "Substance/ffb0f429-e115-4395-a3c3-da00cf611182"
* entry[=].resource = substance-mesalamine 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/d869a593-3dfb-49c4-a79c-52f4ca959e8c"
* entry[=].resource = ap-pentasaslowreleasetablets1g 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/d64d7407-e79f-424c-b33b-29a24e4a302c"
* entry[=].resource = authorizationpentasa1gprolongedreleasetablet 
 

// Organization
* entry[+].fullUrl = "Organization/3d5adfac-80d1-433a-a3e7-197e780ac68e"
* entry[=].resource = org-marketingauthorisationholder-ferringsau-pentasa 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/30c7a595-10ce-4270-8dfa-37db9d2c8613"
* entry[=].resource = ppd-pentasaslowreleasetablets1g 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/7d2f8e3a-4618-4cb3-b296-e224070c2bc0"
* entry[=].resource = mpPentasaSlowReleaseTablets1g 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/f8ae9a23-8840-43f5-98e3-a10f45a5b02c"
* entry[=].resource = mid-pentasaslowreleasetablets1g 
 

