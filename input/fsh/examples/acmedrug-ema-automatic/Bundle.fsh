
Instance: bundlepackageleaflet-acmedrug
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for acmedrug- Package Leaflet"
Description: "Bundle for acmedrug- Package Leaflet ePI document"
Usage: #example

* id = "6dd1c5f7-3902-4bed-97c9-052a1526e860" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "Composition/ce04c358-6777-4aec-b0c1-e8a15b512ddb"
* entry[0].resource = compositionacmedrug

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/a15e0b81-c040-47c9-9276-9068dee22ad9"
* entry[=].resource = ingredient-for-acmedrug-acmedruging3 

// Ingredient
* entry[+].fullUrl = "Ingredient/8488a092-a0c2-4cc9-a23e-521224825f33"
* entry[=].resource = ingredient-for-acmedrug-acmedruging2 

// Ingredient
* entry[+].fullUrl = "Ingredient/39e6d50f-ecb4-424c-95b1-63bc40db32c4"
* entry[=].resource = ingredient-for-acmedrug-acmedruging1 
 

// Substance
* entry[+].fullUrl = "Substance/7cfe042b-2b33-4f1f-b179-c6db51b6452c"
* entry[=].resource = substance-acmesub 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/6e7ab932-7ec7-4792-a9ad-60765295b770"
* entry[=].resource = ap-acmedrug 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/ef56e95b-7fd5-4d3b-a8d2-c858aaa0d22b"
* entry[=].resource = authorizationacmedrug 
 

// Organization
* entry[+].fullUrl = "Organization/1103225b-fb53-4bdd-bc37-e175c91020d1"
* entry[=].resource = org-marketingauthorisationholder-acmeindustry-acmedrug 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/4702bfc5-31b2-4bb8-b6c9-2b41b4b4eefe"
* entry[=].resource = ppd-acmedrugblistertabs 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/23f26b3d-1f5a-49a2-a133-48a198c5ffda"
* entry[=].resource = mpacmedrugman 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/25fbd641-f8cb-4f22-9de1-1e9220922ec4"
* entry[=].resource = mid-acmedrugman 
 

