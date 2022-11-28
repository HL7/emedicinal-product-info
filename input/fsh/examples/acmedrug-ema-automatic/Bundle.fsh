
Instance: bundlepackageleafletacmedrug-
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for acmedrug- Package Leaflet"
Description: "Bundle for acmedrug- Package Leaflet ePI document"
Usage: #example

* id = "df2d0493-7403-43c9-9e49-3f705fbb8531" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "Composition/0958e7b6-736c-41d4-9642-462466eb8090"
* entry[0].resource = compositionacmedrug

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/2253beea-3b62-4bd6-b1ca-810b178a8c76"
* entry[=].resource = ingredient-for-acmedrug-acmedrug-ing3 

// Ingredient
* entry[+].fullUrl = "Ingredient/32cbe673-db54-4e01-ad15-9ec5af4d4f8d"
* entry[=].resource = ingredient-for-acmedrug-acmedrug-ing2 

// Ingredient
* entry[+].fullUrl = "Ingredient/4d2d647b-3992-47c3-9dc9-c54d11ca104f"
* entry[=].resource = ingredient-for-acmedrug-acmedrug-ing1 
 

// Substance
* entry[+].fullUrl = "Substance/36f24df3-e646-4245-b8e0-9b39f8f683b0"
* entry[=].resource = substance-acmesub 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/82986f93-9d02-42b6-a801-23d62fcb3a52"
* entry[=].resource = adminproductacmedrug 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/4f9c2c04-6651-419d-933e-fc01b0988afe"
* entry[=].resource = authorizationacmedrug 
 

// Organization
* entry[+].fullUrl = "Organization/5b5e860e-1563-46da-b528-ce1e36849c96"
* entry[=].resource = marketingauthorisationholder-acmeindustry 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/479a5c43-b020-4a05-a9db-f5a85a3e00c1"
* entry[=].resource = acmedrugblistertabs 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/dcc5b6db-b516-4350-893a-feb6647894fb"
* entry[=].resource = acmedrug-man 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/d8a79128-2b4c-4019-b9a9-dd62e6829a56"
* entry[=].resource = acmedrugman 
 

