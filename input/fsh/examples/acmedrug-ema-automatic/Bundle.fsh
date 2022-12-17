
Instance: bundlepackageleaflet-acmedrug
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for acmedrug Package Leaflet"
Description: "Bundle for acmedrug Package Leaflet ePI document"
Usage: #example

* id = "b3bff337-fb9b-4c59-8e7b-769f0b35c1b4" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2022-12-17T12:23:28Z"

// Composition
* entry[0].fullUrl = "Composition/57f136d4-b220-4e41-8fb4-25201f900754"
* entry[0].resource = compositionacmedrug

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/4e303767-ef0f-4486-b4d2-889fe826c517"
* entry[=].resource = ingredient-for-acmedrug-acmedruging3 

// Ingredient
* entry[+].fullUrl = "Ingredient/027e6d7f-3fb2-4a4d-ba9e-2f4344e5c88a"
* entry[=].resource = ingredient-for-acmedrug-acmedruging2 

// Ingredient
* entry[+].fullUrl = "Ingredient/36022b75-fdb4-4629-9d48-4be6d034db51"
* entry[=].resource = ingredient-for-acmedrug-acmedruging1 
 

// Substance
* entry[+].fullUrl = "Substance/f80e4d44-38b4-4bce-a3ff-05aaa5700a62"
* entry[=].resource = substance-acmesub 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/5e6e3f73-bd2c-4e9d-9643-9188ae0d3142"
* entry[=].resource = ap-acmedrug 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/ad98d271-47be-45b4-be1f-dd568058e36e"
* entry[=].resource = authorizationacmedrug 
 

// Organization
* entry[+].fullUrl = "Organization/2d45157a-fa8f-4bfe-8baf-5a39dc887c5f"
* entry[=].resource = org-marketingauthorisationholder-acmeindustry-acmedrug 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/3d25ed84-b86a-4211-bd14-24dfbf968a32"
* entry[=].resource = ppd-acmedrugblistertabs 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/dc1c1f15-c169-419c-a4b2-d4895a8cc4f9"
* entry[=].resource = mpacmedrugman 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/35cb8d52-8e93-494a-adc2-31efc7f605db"
* entry[=].resource = mid-acmedrugman 
 

