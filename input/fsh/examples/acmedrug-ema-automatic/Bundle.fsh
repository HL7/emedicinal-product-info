
Instance: bundlepackageleaflet-acmedrug
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for acmedrug Package Leaflet"
Description: "Bundle for acmedrug Package Leaflet ePI document"
Usage: #example

* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2023-01-14T16:12:19Z"

// Composition
* entry[0].fullUrl = "Composition/compositionacmedrug"
* entry[0].resource = compositionacmedrug

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-acmedrug-acmedruging3"
* entry[=].resource = ingredient-for-acmedrug-acmedruging3 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-acmedrug-acmedruging2"
* entry[=].resource = ingredient-for-acmedrug-acmedruging2 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-acmedrug-acmedruging1"
* entry[=].resource = ingredient-for-acmedrug-acmedruging1 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/substance-acmesub"
* entry[=].resource = substance-acmesub 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/ap-acmedrug"
* entry[=].resource = ap-acmedrug 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/authorizationacmedrug"
* entry[=].resource = authorizationacmedrug 
 

// Organization

* entry[+].fullUrl = "Organization/org-marketingauthorisationholder-acmeindustry-acmedrug"
* entry[=].resource = org-marketingauthorisationholder-acmeindustry-acmedrug 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/ppd-acmedrugblistertabs"
* entry[=].resource = ppd-acmedrugblistertabs 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/mpacmedrugman"
* entry[=].resource = mpacmedrugman 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/mid-acmedrugman"
* entry[=].resource = mid-acmedrugman 
 

