
Instance: bundlepackageleaflet-acmedrug
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for acmedrug- Package Leaflet"
Description: "Bundle for acmedrug- Package Leaflet ePI document"
Usage: #example

* id = "b029f158-afc1-46c5-8be0-0ad2bba8bde9" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "Composition/5e82e4b0-0aab-468f-b6f4-549522418202"
* entry[0].resource = compositionacmedrug

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/b1b5c827-1ff4-4b3f-bbc5-128bf532cd0d"
* entry[=].resource = ingredient-for-acmedrug-acmedruging3 

// Ingredient
* entry[+].fullUrl = "Ingredient/4527eee7-2e3e-4608-a146-a6b5b28a0847"
* entry[=].resource = ingredient-for-acmedrug-acmedruging2 

// Ingredient
* entry[+].fullUrl = "Ingredient/10433a82-cfba-42e4-841c-8752df0ec986"
* entry[=].resource = ingredient-for-acmedrug-acmedruging1 
 

// Substance
* entry[+].fullUrl = "Substance/e5b4f5d5-d1ab-488c-9498-2dc1af17ca7e"
* entry[=].resource = substance-acmesub 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/cbe8942d-9ec9-4025-99fe-573bdf1a55b6"
* entry[=].resource = ap-acmedrug 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/69554809-d328-404d-b144-69d17aa71872"
* entry[=].resource = authorizationacmedrug 
 

// Organization
* entry[+].fullUrl = "Organization/6aec6237-b16c-48cc-a198-670f5fda2eab"
* entry[=].resource = org-marketingauthorisationholder-acmeindustry-acmedrug 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/ec8309be-c4cd-44b3-a956-29fd290148a1"
* entry[=].resource = ppd-acmedrugblistertabs 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/0d6a5b63-b9cc-4934-bf42-fd8502701d7a"
* entry[=].resource = mpacmedrugman 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/0034259b-f788-4d52-9c13-8c62f93331a4"
* entry[=].resource = mid-acmedrugman 
 

