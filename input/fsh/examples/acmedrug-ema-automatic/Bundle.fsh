
Instance: bundlepackageleaflet-acmedrug
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for acmedrug- Package Leaflet"
Description: "Bundle for acmedrug- Package Leaflet ePI document"
Usage: #example

* id = "6da8dd5c-9783-42f7-879d-3f8251e2e639" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "Composition/29c15497-ec3a-4647-ae45-df44a6c0fc65"
* entry[0].resource = compositionacmedrug

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/388ecd24-ca23-406a-a014-08c1bd18a14a"
* entry[=].resource = ingredient-for-acmedrug-acmedruging3 

// Ingredient
* entry[+].fullUrl = "Ingredient/de7df0fc-9425-4f26-9179-89ba64db4d6e"
* entry[=].resource = ingredient-for-acmedrug-acmedruging2 

// Ingredient
* entry[+].fullUrl = "Ingredient/dc63ac4f-4460-4e7a-afba-296e240335f3"
* entry[=].resource = ingredient-for-acmedrug-acmedruging1 
 

// Substance
* entry[+].fullUrl = "Substance/6e8b7fe7-e4eb-4aaa-9841-f9ae4e5f16f7"
* entry[=].resource = substance-acmesub 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/79e4149f-207e-47ea-a14c-2156649ced8c"
* entry[=].resource = ap-acmedrug 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/cf5b7336-8b94-4856-8e61-049fac698c80"
* entry[=].resource = authorizationacmedrug 
 

// Organization
* entry[+].fullUrl = "Organization/e8501a78-f0bc-4453-b2ca-617a340c10e0"
* entry[=].resource = org-marketingauthorisationholder-acmeindustry-acmedrug 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/7a0c05d7-e40e-4f33-b2cb-02beb61ca790"
* entry[=].resource = ppd-acmedrugblistertabs 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/3a873a1c-ecf5-4ce1-b5cd-cbfcc633f367"
* entry[=].resource = mpacmedrugman 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/c9c8e0b8-3e9b-4bee-b9b7-e29cfc874ede"
* entry[=].resource = mid-acmedrugman 
 

