
Instance: bundlepackageleaflet-acmedrug
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for acmedrug Package Leaflet"
Description: "Bundle for acmedrug Package Leaflet ePI document"
Usage: #example

* id = "de4b6529-78cb-41cf-9927-d18f3e85a0a0" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2022-12-21T16:16:31Z"

// Composition
* entry[0].fullUrl = "Composition/72f817a1-5d74-461d-a32f-318826a33ea3"
* entry[0].resource = compositionacmedrug

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/9c7c50e3-da95-40d0-9306-b015bb4348cd"
* entry[=].resource = ingredient-for-acmedrug-acmedruging3 

// Ingredient

* entry[+].fullUrl = "Ingredient/44ef399f-b8fe-49a3-a9de-a969df3a3bde"
* entry[=].resource = ingredient-for-acmedrug-acmedruging2 

// Ingredient

* entry[+].fullUrl = "Ingredient/e9d37278-9710-49ab-beaa-5030847be97c"
* entry[=].resource = ingredient-for-acmedrug-acmedruging1 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/e030d094-f124-47b4-bf8e-3e16533947d8"
* entry[=].resource = substance-acmesub 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/7b59f1bf-5f23-4a4d-bec5-5c73979f7905"
* entry[=].resource = ap-acmedrug 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/67f4d272-ebfc-4253-80ed-4cdea21f76fb"
* entry[=].resource = authorizationacmedrug 
 

// Organization

* entry[+].fullUrl = "Organization/7f5b79d7-9ec8-4b46-a9ab-79fe27f24aaf"
* entry[=].resource = org-marketingauthorisationholder-acmeindustry-acmedrug 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/c2f900ce-aba6-45d8-8c30-ad4f4f53a830"
* entry[=].resource = ppd-acmedrugblistertabs 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/97017a42-ee70-4af0-a33a-652bf861552f"
* entry[=].resource = mpacmedrugman 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/df6f1fc9-98ee-4ed7-96fa-8d43e1a1d8c5"
* entry[=].resource = mid-acmedrugman 
 

