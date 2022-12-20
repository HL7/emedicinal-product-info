
Instance: bundlepackageleaflet-humaloginsulinlispro100uml
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet"
Description: "Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet ePI document"
Usage: #example

* id = "bd17604d-0c46-4fac-a9b7-ea49d354f01a" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2022-12-20T14:55:58Z"

// Composition
* entry[0].fullUrl = "Composition/cf9854cc-fa77-4318-a565-d6f744addb25"
* entry[0].resource = compositionHumalog

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/344ec685-46ab-4f37-a0ba-f7fe72a16f63"
* entry[=].resource = ingredient-for-humalog-glycerol 

// Ingredient

* entry[+].fullUrl = "Ingredient/8005bb4f-c260-43f1-a919-032185d99492"
* entry[=].resource = ingredient-for-humalog-hydrochloricacid 

// Ingredient

* entry[+].fullUrl = "Ingredient/5c3f4fe7-d091-4480-b0ca-07404b03d374"
* entry[=].resource = ingredient-for-humalog-sodiumhydroxide 

// Ingredient

* entry[+].fullUrl = "Ingredient/909923f7-772c-4bbe-aeb5-3995afc16131"
* entry[=].resource = ingredient-for-humalog-sterilewaterforinjection 

// Ingredient

* entry[+].fullUrl = "Ingredient/c80c67df-9de9-4dfd-b609-5bb59c9d1b61"
* entry[=].resource = ingredient-for-humalog-insulinlispro 

// Ingredient

* entry[+].fullUrl = "Ingredient/46a12e95-0764-4625-b2c1-2d594e999028"
* entry[=].resource = ingredient-for-humalog-zincoxide 

// Ingredient

* entry[+].fullUrl = "Ingredient/bdb3800c-2813-47b9-8144-386abcf452dc"
* entry[=].resource = ingredient-for-humalog-metacresol 

// Ingredient

* entry[+].fullUrl = "Ingredient/244c29f5-ae44-49ad-96f2-e0c365779a0e"
* entry[=].resource = ingredient-for-humalog-trometamol 
 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/xxxxx"
* entry[=].resource = ap-humalog100uml5prefilledpen 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/383cc389-8f7a-48d4-9870-65d44d73f84a"
* entry[=].resource = authorizationhumalog 
 

// Organization

* entry[+].fullUrl = "Organization/3b0b32f5-0bf1-4e1f-8c64-63d0907c9cff"
* entry[=].resource = org-marketingauthorisationholder-elilillynederlandbv-humalog 

// Organization

* entry[+].fullUrl = "Organization/724b50e7-68e7-4fc3-a31b-3e3960d1dd93"
* entry[=].resource = org-manufacturerapi-elilillyandcompany-humalog 

// Organization

* entry[+].fullUrl = "Organization/94e8011e-2a38-4bdf-8693-0ed96b25084a"
* entry[=].resource = org-manufacturer-lillysa-humalog 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/d21474b5-361a-47ba-a039-ea2e640def1c"
* entry[=].resource = ppd-humalog100unitsmlkwikpensolutionforinjectioninaprefilledpen 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/5b19f7ba-b52f-4df4-86b6-90e1e9936fd9"
* entry[=].resource = mpHumalogMix50InsulinKwikPen3mlprefill 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/a26fc18e-0b9f-44cb-b8cf-572b758fcf7b"
* entry[=].resource = mid-humalog100uml5prefilledpen 
 

