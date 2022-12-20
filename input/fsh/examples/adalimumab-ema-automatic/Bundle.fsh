
Instance: bundlepackageleaflet-adalimumab
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for adalimumab Package Leaflet"
Description: "Bundle for adalimumab Package Leaflet ePI document"
Usage: #example

* id = "704bd806-78e6-44a4-a527-09705e95f7f9" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/16/1157/003"
* type = #document
* timestamp = "2022-12-20T14:55:58Z"

// Composition
* entry[0].fullUrl = "Composition/511275a5-08b5-4d30-8b5c-e3188b34db71"
* entry[0].resource = compositionadalimumab

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/2e1e0304-d4de-4135-ab5d-72bb4859d2ca"
* entry[=].resource = ingredient-for-adalimumab-insulinglargine 

// Ingredient

* entry[+].fullUrl = "Ingredient/a48971df-c269-4bd7-af02-cdbc446fef40"
* entry[=].resource = ingredient-for-adalimumab-lixisenatide 

// Ingredient

* entry[+].fullUrl = "Ingredient/313668a0-e923-48fe-ae04-49f8fcd5451e"
* entry[=].resource = ingredient-for-adalimumab-glycerol85whodd 
 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/6f67c299-ba54-4757-b6d2-0321023cbf10"
* entry[=].resource = ap-adalimumab 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/76e9f06d-24e7-49ff-815c-90f3b4c2c58f"
* entry[=].resource = authorizationadalimumab 
 

// Organization

* entry[+].fullUrl = "Organization/cf627b16-7e19-40ff-8244-f5002055577a"
* entry[=].resource = org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/32b215ad-10bd-431d-9e02-99c4c7840ad6"
* entry[=].resource = org-manufacturerapi-sanofiaventisdeutschlandgmbh-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/24fd1d2f-c037-49cc-8d1f-6a7a439eab99"
* entry[=].resource = org-manufacturerbatchrelease-sanofiaventisdeutschlandgmbh-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/455cd805-47cb-428a-8e76-33c969cf0f0a"
* entry[=].resource = org-medicinesregulatoryauthority-europeanmedicinesagency-adalimumab 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/49cf3f40-7984-47a5-8e30-4af3ca59d52b"
* entry[=].resource = ppd-adalimumab 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/0dc20039-5dcf-46c7-a4d9-b5b72172a2ba"
* entry[=].resource = mpadalimumab 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/70bfdb2f-dd59-4883-9c2b-0df0d8986f13"
* entry[=].resource = mid-adalimumab 
 

