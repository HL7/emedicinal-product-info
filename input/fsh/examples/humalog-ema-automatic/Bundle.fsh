
Instance: bundlepackageleaflet-humaloginsulinlispro100uml
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet"
Description: "Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet ePI document"
Usage: #example

* id = "3319b7fc-947d-4b44-a552-94e465905b4f" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "xx"
* type = #document
* timestamp = "2022-12-21T16:16:31Z"

// Composition
* entry[0].fullUrl = "Composition/83d96cda-aad9-4c0c-b842-fae7bdb01acd"
* entry[0].resource = compositionHumalog

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/f18cdb98-9bdc-4a8a-8e06-05080b562066"
* entry[=].resource = ingredient-for-humalog-glycerol 

// Ingredient

* entry[+].fullUrl = "Ingredient/11f16088-b402-4044-889d-880f6bbc552c"
* entry[=].resource = ingredient-for-humalog-hydrochloricacid 

// Ingredient

* entry[+].fullUrl = "Ingredient/d9a1da63-dc2b-409d-8ce1-5de1e2a7248d"
* entry[=].resource = ingredient-for-humalog-sodiumhydroxide 

// Ingredient

* entry[+].fullUrl = "Ingredient/aace9a3c-7eb5-431d-9996-e3e380322333"
* entry[=].resource = ingredient-for-humalog-sterilewaterforinjection 

// Ingredient

* entry[+].fullUrl = "Ingredient/94ab72e8-e644-4b93-bd2b-76efe0829949"
* entry[=].resource = ingredient-for-humalog-insulinlispro 

// Ingredient

* entry[+].fullUrl = "Ingredient/a850eb8e-f014-497b-9018-069834e5c00f"
* entry[=].resource = ingredient-for-humalog-zincoxide 

// Ingredient

* entry[+].fullUrl = "Ingredient/fb5a6d09-ead0-42eb-bec0-b333176eee78"
* entry[=].resource = ingredient-for-humalog-metacresol 

// Ingredient

* entry[+].fullUrl = "Ingredient/68d04a97-d397-4343-b4c2-cdb5705caf81"
* entry[=].resource = ingredient-for-humalog-trometamol 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/5297284f-b16d-4dab-be18-be2d6fce49a4"
* entry[=].resource = substance-insulinlispro 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/xxxxx"
* entry[=].resource = ap-humalog100uml5prefilledpen 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/bfcc9fc1-936b-42ed-b352-b66ab3b6c0e9"
* entry[=].resource = authorizationhumalog 
 

// Organization

* entry[+].fullUrl = "Organization/5645bec4-7fdb-47f8-9c3f-72ef925027a9"
* entry[=].resource = org-marketingauthorisationholder-elilillynederlandbv-humalog 

// Organization

* entry[+].fullUrl = "Organization/6bebca67-4b35-4fd7-b7a4-df25e59a27f0"
* entry[=].resource = org-manufacturerapi-elilillyandcompany-humalog 

// Organization

* entry[+].fullUrl = "Organization/4108aeae-28ce-4669-a89e-825d6ee43560"
* entry[=].resource = org-manufacturer-lillysa-humalog 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/006f33c5-94a6-4bb5-b1b0-457e6d91bdc5"
* entry[=].resource = ppd-humalog100unitsmlkwikpensolutionforinjectioninaprefilledpen 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/fba3c2e8-e5f3-4de0-ae3c-d6687dffc690"
* entry[=].resource = mpHumalogMix50InsulinKwikPen3mlprefill 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/b43eff6e-56bc-4904-918b-830b8c40a0ba"
* entry[=].resource = mid-humalog100uml5prefilledpen 
 

