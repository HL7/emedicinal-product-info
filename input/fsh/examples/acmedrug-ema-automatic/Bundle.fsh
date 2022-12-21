
Instance: bundlepackageleaflet-acmedrug
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for acmedrug Package Leaflet"
Description: "Bundle for acmedrug Package Leaflet ePI document"
Usage: #example

* id = "c54eed34-5898-45c3-9d65-d8846bfc3204" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2022-12-21T14:58:02Z"

// Composition
* entry[0].fullUrl = "Composition/5e661d94-2ee6-4bc7-abdb-7ff85d4b386e"
* entry[0].resource = compositionacmedrug

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/c8efb579-0af3-43a0-ab94-1e83214df199"
* entry[=].resource = ingredient-for-acmedrug-acmedruging3 

// Ingredient

* entry[+].fullUrl = "Ingredient/15373d68-a339-4a4e-a028-f32239c51336"
* entry[=].resource = ingredient-for-acmedrug-acmedruging2 

// Ingredient

* entry[+].fullUrl = "Ingredient/cf7ba7c4-d47d-4076-b0f2-4586bd2c1e01"
* entry[=].resource = ingredient-for-acmedrug-acmedruging1 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/45dbeaea-74ea-4c4f-b51d-0aa543f6471b"
* entry[=].resource = substance-acmesub 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/bd350f96-6eae-42d0-ad53-25189168df15"
* entry[=].resource = ap-acmedrug 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/94dd19da-6256-4365-ace6-3bcdbf75a76b"
* entry[=].resource = authorizationacmedrug 
 

// Organization

* entry[+].fullUrl = "Organization/ace9e45c-ce7c-4a6f-a375-43094a233eb5"
* entry[=].resource = org-marketingauthorisationholder-acmeindustry-acmedrug 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/dfbad9a6-90fd-4da9-807e-ab64fba772f2"
* entry[=].resource = ppd-acmedrugblistertabs 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/5b750537-995f-4ebd-aebf-034a6f3ae376"
* entry[=].resource = mpacmedrugman 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/8a80ae06-7820-4ae3-87fc-996097c3c52c"
* entry[=].resource = mid-acmedrugman 
 

