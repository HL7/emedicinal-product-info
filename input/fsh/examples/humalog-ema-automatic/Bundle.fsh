
Instance: bundlepackageleaflet-humaloginsulinlispro100uml
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet"
Description: "Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet ePI document"
Usage: #example

* id = "5fef3b81-9222-46d7-b050-577bd19828ce" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "Composition/4b99e0f0-1b83-4ddb-9148-350271d00de6"
* entry[0].resource = compositionHumalog

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/d123eae5-741f-4a32-8e1e-e4db5bc0a410"
* entry[=].resource = ingredient-for-humalog-glycerol 

// Ingredient
* entry[+].fullUrl = "Ingredient/ee6096d8-b5c0-4b15-95ca-4d704c6842eb"
* entry[=].resource = ingredient-for-humalog-hydrochloricacid 

// Ingredient
* entry[+].fullUrl = "Ingredient/fd6a6a38-98d6-4cad-b69a-fdd8d35c7485"
* entry[=].resource = ingredient-for-humalog-sodiumhydroxide 

// Ingredient
* entry[+].fullUrl = "Ingredient/6d394361-ea99-4b55-a0d6-0efef203dfea"
* entry[=].resource = ingredient-for-humalog-waterforinjections 

// Ingredient
* entry[+].fullUrl = "Ingredient/daa40ae6-d2d2-407b-81ee-cdb2f2fb4b1b"
* entry[=].resource = ingredient-for-humalog-insulinlispro 

// Ingredient
* entry[+].fullUrl = "Ingredient/b33a3f01-1e7e-4f64-8ab7-ff62edbbc151"
* entry[=].resource = ingredient-for-humalog-zincoxide 

// Ingredient
* entry[+].fullUrl = "Ingredient/ec72d410-6b04-42e9-9a74-3024f7a117ba"
* entry[=].resource = ingredient-for-humalog-metacresol 

// Ingredient
* entry[+].fullUrl = "Ingredient/b4fea749-0c4a-490d-88e7-3fa410da9cfe"
* entry[=].resource = ingredient-for-humalog-trometamol 
 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/xxxxx"
* entry[=].resource = ap-humalog100uml5prefilledpen 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/c010d6db-72cc-4eb9-97d0-20b19009bc29"
* entry[=].resource = authorizationhumalog 
 

// Organization
* entry[+].fullUrl = "Organization/3bd7e482-d239-4b59-9fed-986d570c5a23"
* entry[=].resource = org-marketingauthorisationholder-elilillynederlandbv-humalog 

// Organization
* entry[+].fullUrl = "Organization/831bbbb4-0976-44a4-899d-1b13717fc147"
* entry[=].resource = org-manufacturerapi-elilillyandcompany-humalog 

// Organization
* entry[+].fullUrl = "Organization/7cb3034f-3619-45c5-a794-8f1cf858ccd1"
* entry[=].resource = org-manufacturer-lillysa-humalog 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/4309ebdf-a28c-4b25-9d6e-2f9164d9922a"
* entry[=].resource = ppd-humalog100unitsmlkwikpensolutionforinjectioninaprefilledpen 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/92b74b89-f4e9-408f-939a-283cb1dfb574"
* entry[=].resource = mpHumalogMix50InsulinKwikPen3mlprefill 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/ad309584-9018-49f9-b2ee-1af7eb2ff544"
* entry[=].resource = mid-humalog100uml5prefilledpen 
 

