
Instance: bundlepackageleafletacmedrug
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for acmedrug- Package Leaflet"
Description: "Bundle for acmedrug- Package Leaflet ePI document"
Usage: #example

* id = "de8368a6-158b-424f-a0f1-22c364851b7d" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "Composition/8d1ede1e-2dea-4090-9911-28614afbbe4d"
* entry[0].resource = compositionacmedrug

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/fad4f151-c7af-4a72-a5ec-ca937a0f6a94"
* entry[=].resource = ingredient-for-acmedrug-acmedruging3 

// Ingredient
* entry[+].fullUrl = "Ingredient/b2e0c516-0aeb-4091-aaeb-f04186b32ec3"
* entry[=].resource = ingredient-for-acmedrug-acmedruging2 

// Ingredient
* entry[+].fullUrl = "Ingredient/c4ea3e78-4d5b-41ad-84e8-e3181dd0a161"
* entry[=].resource = ingredient-for-acmedrug-acmedruging1 
 

// Substance
* entry[+].fullUrl = "Substance/82ef491b-ce4b-4f12-9f46-d8bc7da0afeb"
* entry[=].resource = substance-acmesub 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/ae157154-5933-4408-9d70-a2b8aaac0f2f"
* entry[=].resource = adminproductacmedrug 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/35399ca8-d5da-453e-b170-e5e6a2d48b67"
* entry[=].resource = authorizationacmedrug 
 

// Organization
* entry[+].fullUrl = "Organization/49404199-a1cc-490d-aa45-78a56c4e8f4d"
* entry[=].resource = marketingauthorisationholder-acmeindustry-acmedrug 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/0a32589b-d8c9-4bd3-9b08-824a3648e006"
* entry[=].resource = acmedrugblistertabs 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/0800df10-5b3b-4102-ace1-1e14b05f8112"
* entry[=].resource = acmedrug-man 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/d93b5a15-58f4-483a-9218-c5ddd7e0fb00"
* entry[=].resource = acmedrugman 
 

