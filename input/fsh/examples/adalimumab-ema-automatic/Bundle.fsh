
Instance: bundlepackageleaflet-adalimumab
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for adalimumab Package Leaflet"
Description: "Bundle for adalimumab Package Leaflet ePI document"
Usage: #example

* id = "9ca95f77-1d65-45b9-8981-a0409a51a74f" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/16/1157/003"
* type = #document
* timestamp = "2023-01-14T06:51:01Z"

// Composition
* entry[0].fullUrl = "Composition/63ea944f-5f89-425a-82b0-b30714e6cf1b"
* entry[0].resource = compositionadalimumab

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/9eb7ab81-5a42-4389-a793-d0e1fdfbdd6d"
* entry[=].resource = ingredient-for-adalimumab-insulinglargine 

// Ingredient

* entry[+].fullUrl = "Ingredient/83c226d2-1be2-41b5-954c-0bca9202f489"
* entry[=].resource = ingredient-for-adalimumab-lixisenatide 

// Ingredient

* entry[+].fullUrl = "Ingredient/1a7ce3fb-9c8c-402d-b130-7934034da6b5"
* entry[=].resource = ingredient-for-adalimumab-glycerol85whodd 
 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/69d6a412-c519-4527-a691-fe343daa7a3f"
* entry[=].resource = ap-adalimumab 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/e5efca83-74ee-4b74-a8ee-ead5f2f1708f"
* entry[=].resource = authorizationadalimumab 
 

// Organization

* entry[+].fullUrl = "Organization/a5287f90-2628-47f7-a344-c1b841a67558"
* entry[=].resource = org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/88722a2a-911d-4b2e-b006-858d91ed2b3b"
* entry[=].resource = org-manufacturerapi-sanofiaventisdeutschlandgmbh-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/de50b1e3-9b66-4673-8969-0dddb0a389e4"
* entry[=].resource = org-manufacturerbatchrelease-sanofiaventisdeutschlandgmbh-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/e9922cdc-4e9a-4d2f-8334-c6614fad02df"
* entry[=].resource = org-medicinesregulatoryauthority-europeanmedicinesagency-adalimumab 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/b022e766-d5db-463b-a401-68b40e92b580"
* entry[=].resource = ppd-adalimumab 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/0f90da05-e68d-458a-8e46-414c53a70031"
* entry[=].resource = mpadalimumab 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/69fcae0f-8d54-4ee6-be68-c59fd1c0d809"
* entry[=].resource = mid-adalimumab 
 

