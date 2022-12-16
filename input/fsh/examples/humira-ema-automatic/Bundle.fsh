
Instance: bundlepackageleaflet-humira
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for humira Package Leaflet"
Description: "Bundle for humira Package Leaflet ePI document"
Usage: #example

* id = "9442bd1e-698c-4d85-8c2e-c0f303392616" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "nan"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "Composition/89f1d65e-4095-44b1-8d8d-303f41c0911f"
* entry[0].resource = compositionhumira

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/27a9bf77-3521-4928-855d-c71d492ea11b"
* entry[=].resource = ingredient-for-humira-mannitol 

// Ingredient
* entry[+].fullUrl = "Ingredient/602fc486-24f0-4295-b214-a8bc160c8aeb"
* entry[=].resource = ingredient-for-humira-polysorbate80 

// Ingredient
* entry[+].fullUrl = "Ingredient/e8b7cfcd-e36e-4711-a8d8-a3de88263718"
* entry[=].resource = ingredient-for-humira-adalimumab 

// Ingredient
* entry[+].fullUrl = "Ingredient/6d8392ff-76b3-4225-8581-cdcc00445100"
* entry[=].resource = ingredient-for-humira-waterforinjections 
 

// Substance
* entry[+].fullUrl = "Substance/9fc0cb01-2d59-4015-b8e2-b50bd4cd62fe"
* entry[=].resource = substance-adalimumab 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/56b1bd0e-c906-4e2f-8f96-463bef79c7e2"
* entry[=].resource = ap-humira20mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/e684d7e3-34e8-4c3d-b571-b003a6fbb653"
* entry[=].resource = authorizationhumira20mgsolutionforinjectioninprefilledsyringe 
 

// Organization
* entry[+].fullUrl = "Organization/610b6f60-ed48-4e0c-9eda-304152906e60"
* entry[=].resource = org-marketingauthorisationholder-abbviedeutschlandgmbhcokg-humira 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/2b98f916-8f6c-4b07-9591-fd6da51f4fbc"
* entry[=].resource = ppd-humira20mgsolutionforinjectioninprefilledsyringe2prefilledsyringes2alcoholpads 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/113679d3-7966-4144-ac8f-a0a767f8c94f"
* entry[=].resource = mpHumira20mgSolutionforinjectionSubcutaneoususeprefilledsyringeglass 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/7026194c-eb59-4740-9aed-c5c6375ffd4b"
* entry[=].resource = mid-humira20mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass 
 

