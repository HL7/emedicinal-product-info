
Instance: bundlepackageleaflet-humaloginsulinlispro100uml
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet"
Description: "Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet ePI document"
Usage: #example

* id = "9ad134f5-dbb9-4756-8489-2ca70fdab5c1" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "Composition/c58a2559-c16a-4388-b133-a2612a8ccb68"
* entry[0].resource = compositionHumalog

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/c5ef4ed7-5578-4fa9-9959-847524450714"
* entry[=].resource = ingredient-for-humalog-glycerol 

// Ingredient
* entry[+].fullUrl = "Ingredient/1fb2ec19-1705-4bb2-b66d-3252b8498c05"
* entry[=].resource = ingredient-for-humalog-hydrochloricacid 

// Ingredient
* entry[+].fullUrl = "Ingredient/8ac669b9-eb26-4232-be2e-9858bff72fc0"
* entry[=].resource = ingredient-for-humalog-sodiumhydroxide 

// Ingredient
* entry[+].fullUrl = "Ingredient/550a61ce-2019-4d53-9cbd-40a83f00061e"
* entry[=].resource = ingredient-for-humalog-waterforinjections 

// Ingredient
* entry[+].fullUrl = "Ingredient/30278875-02dc-4a9c-9a4e-35c7abca0eaa"
* entry[=].resource = ingredient-for-humalog-insulinlispro 

// Ingredient
* entry[+].fullUrl = "Ingredient/e5cc746a-5a27-4177-b09d-0dece84d0cc2"
* entry[=].resource = ingredient-for-humalog-zincoxide 

// Ingredient
* entry[+].fullUrl = "Ingredient/d24c9451-74d1-42de-94cd-a084cb5dd815"
* entry[=].resource = ingredient-for-humalog-metacresol 

// Ingredient
* entry[+].fullUrl = "Ingredient/166a6519-25e7-46df-bc09-bb42504edf01"
* entry[=].resource = ingredient-for-humalog-trometamol 
 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/xxxxx"
* entry[=].resource = ap-humalog100uml5prefilledpen 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/0de57933-1ad6-429f-9507-461ebea37790"
* entry[=].resource = authorizationhumalog 
 

// Organization
* entry[+].fullUrl = "Organization/dd023079-84ba-4e53-9e94-39e74de02793"
* entry[=].resource = org-marketingauthorisationholder-elilillynederlandbv-humalog 

// Organization
* entry[+].fullUrl = "Organization/7569e92a-c5b5-44af-a965-4f760aebbd66"
* entry[=].resource = org-manufacturerapi-elilillyandcompany-humalog 

// Organization
* entry[+].fullUrl = "Organization/b71cd809-191a-418d-961f-e733c698bcae"
* entry[=].resource = org-manufacturer-lillysa-humalog 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/9f1d9c2d-eb18-4524-8611-b478975190e6"
* entry[=].resource = ppd-humalog100unitsmlkwikpensolutionforinjectioninaprefilledpen 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/bdf843db-3035-4cab-9768-dfd67a78a0e1"
* entry[=].resource = mpHumalogMix50InsulinKwikPen3mlprefill 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/8b38e3ab-9e27-48e5-aef9-65a470c78b8d"
* entry[=].resource = mid-humalog100uml5prefilledpen 
 

