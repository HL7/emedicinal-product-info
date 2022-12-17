
Instance: bundlepackageleaflet-adalimumab
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for adalimumab Package Leaflet"
Description: "Bundle for adalimumab Package Leaflet ePI document"
Usage: #example

* id = "31ffc01f-e145-4239-a735-2fa01b72018e" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/16/1157/003"
* type = #document
* timestamp = "2022-12-17T12:23:28Z"

// Composition
* entry[0].fullUrl = "Composition/63656fd5-a5eb-413b-a0fd-c7f82530f588"
* entry[0].resource = compositionadalimumab

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/232fc4f7-c6a4-424f-ac7d-ecf8bce81b7d"
* entry[=].resource = ingredient-for-adalimumab-insulinglargine 

// Ingredient
* entry[+].fullUrl = "Ingredient/a39ad161-9a77-4132-a7ef-be4494b3cf88"
* entry[=].resource = ingredient-for-adalimumab-lixisenatide 

// Ingredient
* entry[+].fullUrl = "Ingredient/a8f55f17-a3ea-467e-a0f9-d81e994f9f9a"
* entry[=].resource = ingredient-for-adalimumab-glycerol85 
 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/119c6e3a-5e6f-4b09-b361-80cd46387352"
* entry[=].resource = ap-adalimumab 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/075f7a25-2fd7-41bd-a7da-80a40cbc46f5"
* entry[=].resource = authorizationadalimumab 
 

// Organization
* entry[+].fullUrl = "Organization/c3b3b264-b964-484e-8dd8-a58903d437af"
* entry[=].resource = org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab 

// Organization
* entry[+].fullUrl = "Organization/99e29dbe-a15a-4a33-8420-a8886c589bc8"
* entry[=].resource = org-manufacturerapi-sanofiaventisdeutschlandgmbh-adalimumab 

// Organization
* entry[+].fullUrl = "Organization/dd1286db-5a61-4285-98b2-fc585876ce7d"
* entry[=].resource = org-manufacturerbatchrelease-sanofiaventisdeutschlandgmbh-adalimumab 

// Organization
* entry[+].fullUrl = "Organization/afacd2ff-936b-4281-81d6-ef4dd38d5e7f"
* entry[=].resource = org-medicinesregulatoryauthority-europeanmedicinesagency-adalimumab 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/55195839-ce29-465e-81bf-8ccb866f7974"
* entry[=].resource = ppd-adalimumab 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/a546a331-cb16-4baa-8be5-0bc1579e1bb2"
* entry[=].resource = mpadalimumab 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/a9c490f0-1711-43cf-9777-f8a45b526bbd"
* entry[=].resource = mid-adalimumab 
 

