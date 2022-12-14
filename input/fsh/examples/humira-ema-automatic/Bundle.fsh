
Instance: bundlepackageleaflet-humira
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for humira Package Leaflet"
Description: "Bundle for humira Package Leaflet ePI document"
Usage: #example

* id = "0d7c83f4-56a5-46d5-9b93-d21c30d58574" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "nan"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "Composition/002670b7-0c2e-4583-9cfe-46ab06f4e014"
* entry[0].resource = compositionhumira

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/07c746e5-ca65-4646-b4af-48a23d454f30"
* entry[=].resource = ingredient-for-humira-mannitol 

// Ingredient
* entry[+].fullUrl = "Ingredient/024196e7-a36f-4b63-ac35-af98ed3e67f6"
* entry[=].resource = ingredient-for-humira-polysorbate80 

// Ingredient
* entry[+].fullUrl = "Ingredient/7e6a312d-e0c2-4d0d-b3c0-9e337d9627fa"
* entry[=].resource = ingredient-for-humira-adalimumab 

// Ingredient
* entry[+].fullUrl = "Ingredient/9ad9a0f3-8244-4aee-809b-16a8490cd837"
* entry[=].resource = ingredient-for-humira-waterforinjections 
 

// Substance
* entry[+].fullUrl = "Substance/c610e618-ea39-4d75-ad1e-11bb8e2f65f0"
* entry[=].resource = substance-adalimumab 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/57f5ff3c-c26d-4d44-bbf4-6cc7aefb80bd"
* entry[=].resource = ap-humira20mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/6025c7f1-df31-463b-b3b9-de97ed0787ff"
* entry[=].resource = authorizationhumira20mgsolutionforinjectioninprefilledsyringe 
 

// Organization
* entry[+].fullUrl = "Organization/93c7f694-718b-48c9-bf22-06029bb40679"
* entry[=].resource = org-marketingauthorisationholder-abbviedeutschlandgmbhcokg-humira 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/b3f25574-fca9-4994-82c5-da198f8fa6ac"
* entry[=].resource = ppd-humira20mgsolutionforinjectioninprefilledsyringe2prefilledsyringes2alcoholpads 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/e08788c9-1403-4d0e-9e5f-fef66bb88d2e"
* entry[=].resource = mpHumira20mgSolutionforinjectionSubcutaneoususeprefilledsyringeglass 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/ed2b34a7-e18d-4b76-8102-1a214d2aa2a9"
* entry[=].resource = mid-humira20mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass 
 

