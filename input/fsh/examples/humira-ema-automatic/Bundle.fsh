
Instance: bundlepackageleaflet-humira
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for humira Package Leaflet"
Description: "Bundle for humira Package Leaflet ePI document"
Usage: #example

* id = "1de136f7-7564-4986-8c1d-30a85b6e8b38" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "nan"
* type = #document
* timestamp = "2022-12-20T14:55:58Z"

// Composition
* entry[0].fullUrl = "Composition/e8e98677-df97-4711-a527-3205740cd1e6"
* entry[0].resource = compositionhumira

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/1f77b3ee-3e7b-439c-8f18-b3e9b6a23fa2"
* entry[=].resource = ingredient-for-humira-mannitol 

// Ingredient

* entry[+].fullUrl = "Ingredient/a4e8bb6c-6c19-40b9-a39f-776e5859a9b2"
* entry[=].resource = ingredient-for-humira-polysorbate80 

// Ingredient

* entry[+].fullUrl = "Ingredient/df71372b-c51e-47b3-9f0d-9b2fe8b549ac"
* entry[=].resource = ingredient-for-humira-adalimumab 

// Ingredient

* entry[+].fullUrl = "Ingredient/ef2258aa-17d8-49aa-881f-b255924870c4"
* entry[=].resource = ingredient-for-humira-sterilewaterforinjection 

// Ingredient

* entry[+].fullUrl = "Ingredient/08101e4b-2f90-41cb-944b-8c51eb2bb6ab"
* entry[=].resource = ingredient-for-humira-citricacidmonohydrate 

// Ingredient

* entry[+].fullUrl = "Ingredient/e53fe219-3436-4930-a8cf-376027a622d3"
* entry[=].resource = ingredient-for-humira-sodiumcitrateunspecifiedform 

// Ingredient

* entry[+].fullUrl = "Ingredient/d6280bdc-4d0a-414e-abed-427336658280"
* entry[=].resource = ingredient-for-humira-sodiumphosphatemonobasicdihydrate 

// Ingredient

* entry[+].fullUrl = "Ingredient/7e1dc100-d6ac-4e58-a605-f29418f58d5d"
* entry[=].resource = ingredient-for-humira-sodiumphosphatedibasicdihydrate 

// Ingredient

* entry[+].fullUrl = "Ingredient/a9ab00ce-f7a7-4e41-8531-4528a0a107ec"
* entry[=].resource = ingredient-for-humira-sodiumchloride 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/a74e5817-ba96-4022-a7c7-687123de34c9"
* entry[=].resource = substance-adalimumab 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/f0c11726-e289-414b-b133-ad60e58311a2"
* entry[=].resource = ap-humira40mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/e826f0b1-c3f0-4e90-a02d-b571dfb033af"
* entry[=].resource = authorizationhumira20mgsolutionforinjectioninprefilledsyringe 
 

// Organization

* entry[+].fullUrl = "Organization/b71c0e27-4515-4eb1-b9f3-92c3ef3c6961"
* entry[=].resource = org-marketingauthorisationholder-abbviedeutschlandgmbhcokg-humira 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/d5e7e418-0f4a-4d8f-9fde-02571528a841"
* entry[=].resource = ppd-humira40mgsolutionforinjectioninprefilledsyringe2prefilledsyringes2alcoholpads 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/2d4b9963-bf4d-47cc-ba2e-45daa886aecf"
* entry[=].resource = mpHumira40mgSolutionforinjectionSubcutaneoususeprefilledsyringeglass 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/52327d43-b722-4801-9676-2cb2a9f04fa4"
* entry[=].resource = mid-humira40mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass 
 

