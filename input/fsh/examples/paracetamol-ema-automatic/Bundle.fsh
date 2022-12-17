
Instance: bundlepackageleaflet-paracetamol
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for paracetamol Package Leaflet"
Description: "Bundle for paracetamol Package Leaflet ePI document"
Usage: #example

* id = "63e2cd7e-4f2c-4b3b-8e77-e91ae7436bd2" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2022-12-17T12:23:28Z"

// Composition
* entry[0].fullUrl = "Composition/d43e3963-bc14-4256-8d95-4c3f1f102144"
* entry[0].resource = compositionparacetamol

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/822117f8-0d40-4881-af02-bed6ce919010"
* entry[=].resource = ingredient-for-paracetamol-qqq 

// Ingredient
* entry[+].fullUrl = "Ingredient/4edd8155-99ed-4c22-b6aa-d696558531b5"
* entry[=].resource = ingredient-for-paracetamol-www 

// Ingredient
* entry[+].fullUrl = "Ingredient/9b936a6a-a403-4ceb-b71f-f2d2354a9d24"
* entry[=].resource = ingredient-for-paracetamol-paracetamol 
 

// Substance
* entry[+].fullUrl = "Substance/7e8468ff-c848-4cc4-91fe-306c079feac3"
* entry[=].resource = substance-paracetamol 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/ca719992-e779-49e7-bcce-b37dde82709f"
* entry[=].resource = ap-paracetamol 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/74754bdc-58c9-41ec-adba-c80abd111ff9"
* entry[=].resource = authorizationparacetamol 
 

// Organization
* entry[+].fullUrl = "Organization/e3b6f94b-3aab-4dba-8156-c70f3810f3b2"
* entry[=].resource = org-marketingauthorisationholder-acmeindustry-paracetamol 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/57288a81-67b6-4aea-8ec7-147f0f770aaf"
* entry[=].resource = ppd-parecatamoltabs 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/abdafe81-3319-4f71-a2da-173c4ebbd832"
* entry[=].resource = mpparecetamolamn 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/df08f8ed-f66c-4445-8783-84bb22dc1ffa"
* entry[=].resource = mid-paracetamol 
 

