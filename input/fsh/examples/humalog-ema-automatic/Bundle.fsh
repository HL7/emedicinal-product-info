
Instance: bundlepackageleaflet-humaloginsulinlispro100uml
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet"
Description: "Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet ePI document"
Usage: #example

* id = "e80000d5-fc34-46f4-ad3b-18ebba4ae8f8" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2022-12-19T16:57:21Z"

// Composition
* entry[0].fullUrl = "Composition/e0d9c141-06d9-4851-84e2-776f4691ab3d"
* entry[0].resource = compositionHumalog

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/452f5372-b3e1-481f-bacf-f89641f38435"
* entry[=].resource = ingredient-for-humalog-glycerol 

// Ingredient

* entry[+].fullUrl = "Ingredient/51d77634-ef0f-4230-a610-b52a05e5746e"
* entry[=].resource = ingredient-for-humalog-hydrochloricacid 

// Ingredient

* entry[+].fullUrl = "Ingredient/dfdd2d9f-4b62-4f55-96d8-7c11efee8048"
* entry[=].resource = ingredient-for-humalog-sodiumhydroxide 

// Ingredient

* entry[+].fullUrl = "Ingredient/2db99531-1ebc-409c-9941-387d800cc8e9"
* entry[=].resource = ingredient-for-humalog-sterilewaterforinjection 

// Ingredient

* entry[+].fullUrl = "Ingredient/9533d7d7-0359-449e-8a12-35ed5be36d38"
* entry[=].resource = ingredient-for-humalog-insulinlispro 

// Ingredient

* entry[+].fullUrl = "Ingredient/f5b919cb-2f5a-4e8a-a97e-4153d2d2cf52"
* entry[=].resource = ingredient-for-humalog-zincoxide 

// Ingredient

* entry[+].fullUrl = "Ingredient/c1caa847-d129-4571-b708-2e74cfb2fdd4"
* entry[=].resource = ingredient-for-humalog-metacresol 

// Ingredient

* entry[+].fullUrl = "Ingredient/58d764f4-a7b6-4155-b85f-af5d76005aa0"
* entry[=].resource = ingredient-for-humalog-trometamol 
 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/xxxxx"
* entry[=].resource = ap-humalog100uml5prefilledpen 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/8a0d9232-126c-4b05-897b-ef71e6cac927"
* entry[=].resource = authorizationhumalog 
 

// Organization

* entry[+].fullUrl = "Organization/631e8d02-c540-41d6-963e-8fcf2acb7a13"
* entry[=].resource = org-marketingauthorisationholder-elilillynederlandbv-humalog 

// Organization

* entry[+].fullUrl = "Organization/b3db62de-c2f5-4541-8303-285dc36c4d64"
* entry[=].resource = org-manufacturerapi-elilillyandcompany-humalog 

// Organization

* entry[+].fullUrl = "Organization/66010582-61f3-48c5-979b-e0a488430150"
* entry[=].resource = org-manufacturer-lillysa-humalog 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/3ad17550-7a45-4a2f-a623-0933c7051b54"
* entry[=].resource = ppd-humalog100unitsmlkwikpensolutionforinjectioninaprefilledpen 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/c931b18e-c12d-4215-9700-f5491d6c765a"
* entry[=].resource = mpHumalogMix50InsulinKwikPen3mlprefill 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/4478e098-80bb-481a-ac3f-24c64014fff9"
* entry[=].resource = mid-humalog100uml5prefilledpen 
 

