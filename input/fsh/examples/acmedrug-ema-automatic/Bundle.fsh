
Instance: bundlepackageleafletacmedrug-
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for acmedrug- Package Leaflet"
Description: "Bundle for acmedrug- Package Leaflet ePI document"
Usage: #example

* id = "96a7b972-889d-497d-b82c-28391a0fa0eb" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "Composition/f110b8ad-6d95-414b-af50-a108e3c2df23"
* entry[0].resource = compositionacmedrug

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/ce7e3ed2-ea4c-45af-bcd8-abdefd82e517"
* entry[=].resource = ingredient-for-acmedrug-acmedrug-ing3 

// Ingredient
* entry[+].fullUrl = "Ingredient/cb01f7d2-7208-47e5-96b3-af3b713bb6d3"
* entry[=].resource = ingredient-for-acmedrug-acmedrug-ing2 

// Ingredient
* entry[+].fullUrl = "Ingredient/50fc0917-4077-4011-a4f3-4c56a527d722"
* entry[=].resource = ingredient-for-acmedrug-acmedrug-ing1 
 

// Substance
* entry[+].fullUrl = "Substance/55e016dd-3819-4d7b-a6f0-4d37f6918d1a"
* entry[=].resource = substance-acmesub 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/2c97ad37-a8e3-4f9d-987f-bb62f754fe1d"
* entry[=].resource = adminproductacmedrug 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/de0b38ef-1fb8-4271-b786-afcb2bd5d0e9"
* entry[=].resource = authorizationacmedrug 
 

// Organization
* entry[+].fullUrl = "Organization/5df384d3-1203-4cfc-8547-4e56f32956e2"
* entry[=].resource = marketingauthorisationholder-acmeindustry 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/dc1cb42c-164f-41f6-9927-c1304552b98b"
* entry[=].resource = acmedrugblistertabs 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/e0219ac4-7203-499f-b77e-bfb6298e9c1e"
* entry[=].resource = acmedrug-man 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/81ced9f3-9549-4248-8af0-1d82f50cb42d"
* entry[=].resource = acmedrugman 
 

