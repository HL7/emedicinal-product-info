
Instance: bundlepackageleaflet-humira
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for humira Package Leaflet"
Description: "Bundle for humira Package Leaflet ePI document"
Usage: #example

* id = "7ddb2fd7-f959-4424-b662-e2b8a47581c7" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "nan"
* type = #document
* timestamp = "2022-12-17T12:23:28Z"

// Composition
* entry[0].fullUrl = "Composition/83ddff58-5514-4366-9dd4-9ad90e6b1282"
* entry[0].resource = compositionhumira

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/c534a592-68e2-4e85-8554-d79305601a83"
* entry[=].resource = ingredient-for-humira-mannitol 

// Ingredient
* entry[+].fullUrl = "Ingredient/26bdd383-cda0-4631-a76d-54aebeea1f3a"
* entry[=].resource = ingredient-for-humira-polysorbate80 

// Ingredient
* entry[+].fullUrl = "Ingredient/0e819ad1-1c8c-4bf7-afcd-e20dc0f4c0d2"
* entry[=].resource = ingredient-for-humira-adalimumab 

// Ingredient
* entry[+].fullUrl = "Ingredient/864e188c-c315-4804-ade5-7fa042503843"
* entry[=].resource = ingredient-for-humira-waterforinjections 
 

// Substance
* entry[+].fullUrl = "Substance/3142ee09-645e-42ef-b4bf-3f8365387276"
* entry[=].resource = substance-adalimumab 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/4d9783f1-27ba-4f9b-a427-ceb0d73f2b39"
* entry[=].resource = ap-humira20mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/fe414747-a028-448c-9848-e2efbcdefd63"
* entry[=].resource = authorizationhumira20mgsolutionforinjectioninprefilledsyringe 
 

// Organization
* entry[+].fullUrl = "Organization/c25563d0-7a0d-4cfc-8717-b575da737ab3"
* entry[=].resource = org-marketingauthorisationholder-abbviedeutschlandgmbhcokg-humira 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/c8d43dc8-7c6c-436a-a8f0-1f5ed4b879a0"
* entry[=].resource = ppd-humira20mgsolutionforinjectioninprefilledsyringe2prefilledsyringes2alcoholpads 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/3da3d2f7-5e9f-4ff3-a86a-e5c756c53b04"
* entry[=].resource = mpHumira20mgSolutionforinjectionSubcutaneoususeprefilledsyringeglass 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/635a58da-37e4-4e1e-be33-9666c9812849"
* entry[=].resource = mid-humira20mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass 
 

