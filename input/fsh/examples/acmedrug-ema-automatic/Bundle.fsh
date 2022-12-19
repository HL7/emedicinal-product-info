
Instance: bundlepackageleaflet-acmedrug
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for acmedrug Package Leaflet"
Description: "Bundle for acmedrug Package Leaflet ePI document"
Usage: #example

* id = "7f7f97cc-1e06-4890-b3b8-af1ea98e1ed7" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2022-12-19T16:57:21Z"

// Composition
* entry[0].fullUrl = "Composition/f9510ce2-4c65-4b21-9c12-59883b902742"
* entry[0].resource = compositionacmedrug

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/3a54fdc9-67dc-416a-9eb2-60a3047958e2"
* entry[=].resource = ingredient-for-acmedrug-acmedruging3 

// Ingredient

* entry[+].fullUrl = "Ingredient/a1f0de5b-a07a-4011-b7b1-e1f10db89684"
* entry[=].resource = ingredient-for-acmedrug-acmedruging2 

// Ingredient

* entry[+].fullUrl = "Ingredient/400d4ca6-7538-4dca-8233-2d5a52610c01"
* entry[=].resource = ingredient-for-acmedrug-acmedruging1 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/a2fb1a02-2c8f-4328-ae84-15e774611d4c"
* entry[=].resource = substance-acmesub 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/2f18f09a-7299-4b3f-8291-5a4cf862b7d7"
* entry[=].resource = ap-acmedrug 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/7887f5ee-5060-408b-afe1-a865343c9792"
* entry[=].resource = authorizationacmedrug 
 

// Organization

* entry[+].fullUrl = "Organization/f8311055-9dd6-4b11-a954-60979578fb89"
* entry[=].resource = org-marketingauthorisationholder-acmeindustry-acmedrug 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/0dd7b3d0-5b52-438c-99c6-9103beb0c8b0"
* entry[=].resource = ppd-acmedrugblistertabs 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/dc96ec55-de69-4d2c-8ec9-5ef63ec30a9d"
* entry[=].resource = mpacmedrugman 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/e68562e6-e1b7-4f19-932f-03d864b27ed4"
* entry[=].resource = mid-acmedrugman 
 

