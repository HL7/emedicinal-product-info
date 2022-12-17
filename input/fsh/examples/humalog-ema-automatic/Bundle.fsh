
Instance: bundlepackageleaflet-humaloginsulinlispro100uml
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet"
Description: "Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet ePI document"
Usage: #example

* id = "08045bd6-62e9-4ddf-af34-0b91902d667e" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2022-12-17T12:23:28Z"

// Composition
* entry[0].fullUrl = "Composition/3ea8400f-2e72-45a9-b10f-f14cce39e93f"
* entry[0].resource = compositionHumalog

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/7696be29-9d37-4788-8756-14eb0a730507"
* entry[=].resource = ingredient-for-humalog-glycerol 

// Ingredient
* entry[+].fullUrl = "Ingredient/3b4c0b3f-5ab7-44c6-9c56-40a1b1dc32c6"
* entry[=].resource = ingredient-for-humalog-hydrochloricacid 

// Ingredient
* entry[+].fullUrl = "Ingredient/3526977f-bd68-41ce-aeb3-34b0ed3073d5"
* entry[=].resource = ingredient-for-humalog-sodiumhydroxide 

// Ingredient
* entry[+].fullUrl = "Ingredient/fa78fe07-e218-4071-9cf1-5754f2ed6366"
* entry[=].resource = ingredient-for-humalog-waterforinjections 

// Ingredient
* entry[+].fullUrl = "Ingredient/ae26a3a8-57ba-481c-b6b3-93802428f2da"
* entry[=].resource = ingredient-for-humalog-insulinlispro 

// Ingredient
* entry[+].fullUrl = "Ingredient/4b64a64b-1abc-4e44-9c30-47fc616e7360"
* entry[=].resource = ingredient-for-humalog-zincoxide 

// Ingredient
* entry[+].fullUrl = "Ingredient/fe955f70-7d0b-4017-aa38-9c072203a0fb"
* entry[=].resource = ingredient-for-humalog-metacresol 

// Ingredient
* entry[+].fullUrl = "Ingredient/235f2be4-460f-40cd-997f-6d048569d59f"
* entry[=].resource = ingredient-for-humalog-trometamol 
 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/xxxxx"
* entry[=].resource = ap-humalog100uml5prefilledpen 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/3b47ef8b-ee04-43c4-be51-ebfbc376a1e7"
* entry[=].resource = authorizationhumalog 
 

// Organization
* entry[+].fullUrl = "Organization/07e1e5d6-0f65-4c18-a8e5-902ecee4ac6d"
* entry[=].resource = org-marketingauthorisationholder-elilillynederlandbv-humalog 

// Organization
* entry[+].fullUrl = "Organization/3b287ca1-fc56-4693-a686-158564044971"
* entry[=].resource = org-manufacturerapi-elilillyandcompany-humalog 

// Organization
* entry[+].fullUrl = "Organization/79a38659-c480-49e1-96c3-5435604f16f2"
* entry[=].resource = org-manufacturer-lillysa-humalog 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/f254d107-ef95-4a3f-af8d-a21ea303a8e4"
* entry[=].resource = ppd-humalog100unitsmlkwikpensolutionforinjectioninaprefilledpen 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/bbb0e905-112e-45ac-8a84-c5dcc42b97c5"
* entry[=].resource = mpHumalogMix50InsulinKwikPen3mlprefill 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/66d36196-76d2-457e-91c7-51e99ec883c6"
* entry[=].resource = mid-humalog100uml5prefilledpen 
 

