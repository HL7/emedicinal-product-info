
Instance: bundlepackageleaflet-acmedrug
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for acmedrug Package Leaflet"
Description: "Bundle for acmedrug Package Leaflet ePI document"
Usage: #example

* id = "50361ca2-538a-416b-b931-4eafbb59844c" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2022-12-20T14:55:58Z"

// Composition
* entry[0].fullUrl = "Composition/c4054713-6f29-4d5e-b4dc-44443af66682"
* entry[0].resource = compositionacmedrug

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/72dd2f93-95bf-4f6b-8d0c-e424a6109842"
* entry[=].resource = ingredient-for-acmedrug-acmedruging3 

// Ingredient

* entry[+].fullUrl = "Ingredient/1f11328b-abe0-44b4-b9a2-52b998d8519c"
* entry[=].resource = ingredient-for-acmedrug-acmedruging2 

// Ingredient

* entry[+].fullUrl = "Ingredient/347ec94f-d230-46b1-89af-5491f8b76279"
* entry[=].resource = ingredient-for-acmedrug-acmedruging1 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/c12f939f-5061-43f3-8b40-28a59664f35a"
* entry[=].resource = substance-acmesub 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/2e8b902e-48e5-486b-b725-2c0dd23fed39"
* entry[=].resource = ap-acmedrug 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/7039c938-668b-4042-bee8-0fa0fdb8d276"
* entry[=].resource = authorizationacmedrug 
 

// Organization

* entry[+].fullUrl = "Organization/0a4cf478-42fa-43ac-b186-a5d4d96e5a87"
* entry[=].resource = org-marketingauthorisationholder-acmeindustry-acmedrug 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/7ca85a3a-b87e-444a-ab13-942c2de37e3e"
* entry[=].resource = ppd-acmedrugblistertabs 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/8a74dbcc-ded3-45d2-949d-28a2f7bd778e"
* entry[=].resource = mpacmedrugman 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/c2e3e8e3-7e21-4c6a-ba61-2ce78bbefe53"
* entry[=].resource = mid-acmedrugman 
 

