
Instance: bundlepackageleaflet-humaloginsulinlispro100uml
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet"
Description: "Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet ePI document"
Usage: #example

* id = "09180d11-550e-48ef-bea6-0dce8915345d" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "xx"
* type = #document
* timestamp = "2023-01-14T06:51:01Z"

// Composition
* entry[0].fullUrl = "Composition/787f6fe4-51fa-40c1-9dbe-7875f7cf7800"
* entry[0].resource = compositionHumalog

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/d7dd47d9-f91b-40f5-8685-ace0a56e6e3e"
* entry[=].resource = ingredient-for-humalog-glycerol 

// Ingredient

* entry[+].fullUrl = "Ingredient/7eac3069-4e0c-4614-9a3d-78c4999c3c0f"
* entry[=].resource = ingredient-for-humalog-hydrochloricacid 

// Ingredient

* entry[+].fullUrl = "Ingredient/3f5ba404-b673-48f5-add5-29ce19d5d9cf"
* entry[=].resource = ingredient-for-humalog-sodiumhydroxide 

// Ingredient

* entry[+].fullUrl = "Ingredient/01c3a3dc-8572-4789-b4dc-c6251262ebe0"
* entry[=].resource = ingredient-for-humalog-sterilewaterforinjection 

// Ingredient

* entry[+].fullUrl = "Ingredient/29c2e07f-ca58-448a-98bc-f9debbeb9860"
* entry[=].resource = ingredient-for-humalog-insulinlispro 

// Ingredient

* entry[+].fullUrl = "Ingredient/6fbd3320-7e72-4887-84d0-e9383c9a80da"
* entry[=].resource = ingredient-for-humalog-zincoxide 

// Ingredient

* entry[+].fullUrl = "Ingredient/6f3e928c-faf0-403b-ad5f-a368f00da970"
* entry[=].resource = ingredient-for-humalog-metacresol 

// Ingredient

* entry[+].fullUrl = "Ingredient/2c04eddf-8aa1-41c1-94d7-fc2c31831594"
* entry[=].resource = ingredient-for-humalog-trometamol 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/6ec114b1-928a-4711-9f28-0999c31ab95f"
* entry[=].resource = substance-insulinlispro 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/xxxxx"
* entry[=].resource = ap-humalog100uml5prefilledpen 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/8a5770c0-b02c-4e45-9dad-73934a7b3fcc"
* entry[=].resource = authorizationhumalog 
 

// Organization

* entry[+].fullUrl = "Organization/8dcc93c6-edbc-4532-a076-ebafab97efe2"
* entry[=].resource = org-marketingauthorisationholder-elilillynederlandbv-humalog 

// Organization

* entry[+].fullUrl = "Organization/2de8c733-650f-4b80-b6ad-b37b08cd2fbf"
* entry[=].resource = org-manufacturerapi-elilillyandcompany-humalog 

// Organization

* entry[+].fullUrl = "Organization/0d99e992-8977-4908-bcd8-e910d5c4d82c"
* entry[=].resource = org-manufacturer-lillysa-humalog 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/a2146cce-7c3b-457c-97ec-feac9120ca2d"
* entry[=].resource = ppd-humalog100unitsmlkwikpensolutionforinjectioninaprefilledpen 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/0543565c-93c8-40ad-8268-d368e0bda4bd"
* entry[=].resource = mpHumalogMix50InsulinKwikPen3mlprefill 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/02dc706d-f79a-4e0a-91ec-c4fdef75b5e3"
* entry[=].resource = mid-humalog100uml5prefilledpen 
 

