
Instance: bundlepackageleaflet-cinitrapide
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for cinitrapide Package Leaflet"
Description: "Bundle for cinitrapide Package Leaflet ePI document"
Usage: #example

* id = "13d8fc1d-43af-4568-8e15-2f7c5f017f43" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2022-12-17T12:23:28Z"

// Composition
* entry[0].fullUrl = "Composition/4f79da74-9ddf-4ad4-85be-be55b599813f"
* entry[0].resource = compositioncinitrapide

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/c8349042-b2e8-4971-b8ca-0eb2ea4f1f0e"
* entry[=].resource = ingredient-for-cinitrapide-xxx 

// Ingredient
* entry[+].fullUrl = "Ingredient/22fa09ff-515f-40db-8841-583a2f1e1405"
* entry[=].resource = ingredient-for-cinitrapide-xx 

// Ingredient
* entry[+].fullUrl = "Ingredient/0d4cda05-3cb0-402c-bda7-49db898be33b"
* entry[=].resource = ingredient-for-cinitrapide-cinitrapide 
 

// Substance
* entry[+].fullUrl = "Substance/f496509d-6aba-4d03-a48a-77fca2caec32"
* entry[=].resource = substance-cinitrapide 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/0a67b2fb-3f7a-4129-a1c4-ba794e461d05"
* entry[=].resource = ap-cinitrapide 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/da336578-fdb8-45d5-bc78-04a3022032f2"
* entry[=].resource = authorizationcinitrapide 
 

// Organization
* entry[+].fullUrl = "Organization/cde90934-fd1d-49c3-83ad-ecb2e6fbe341"
* entry[=].resource = org-marketingauthorisationholder-acmeindustry-cinitrapide 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/2b99303d-bf3e-4fb6-b2b5-dea1ae711ca3"
* entry[=].resource = ppd-cinitrapide 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/4cbacded-0169-4537-b2a7-71b73285ac40"
* entry[=].resource = mpcinitrapide 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/a2f9ce05-904f-4bb4-a5b1-6f32aaab3329"
* entry[=].resource = mid-cinitrapide 
 

