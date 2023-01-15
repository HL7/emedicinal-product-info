
Instance: bundlepackageleaflet-humira
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for humira Package Leaflet"
Description: "Bundle for humira Package Leaflet ePI document"
Usage: #example

* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "nan"
* type = #document
* timestamp = "2023-01-14T16:01:46Z"

// Composition
* entry[0].fullUrl = "Composition/compositionhumira"
* entry[0].resource = compositionhumira

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-humira-mannitol"
* entry[=].resource = ingredient-for-humira-mannitol 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-humira-polysorbate80"
* entry[=].resource = ingredient-for-humira-polysorbate80 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-humira-adalimumab"
* entry[=].resource = ingredient-for-humira-adalimumab 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-humira-sterilewaterforinjection"
* entry[=].resource = ingredient-for-humira-sterilewaterforinjection 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-humira-citricacidmonohydrate"
* entry[=].resource = ingredient-for-humira-citricacidmonohydrate 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-humira-sodiumcitrateunspecifiedform"
* entry[=].resource = ingredient-for-humira-sodiumcitrateunspecifiedform 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-humira-sodiumphosphatemonobasicdihydrate"
* entry[=].resource = ingredient-for-humira-sodiumphosphatemonobasicdihydrate 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-humira-sodiumphosphatedibasicdihydrate"
* entry[=].resource = ingredient-for-humira-sodiumphosphatedibasicdihydrate 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-humira-sodiumchloride"
* entry[=].resource = ingredient-for-humira-sodiumchloride 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/substance-adalimumab"
* entry[=].resource = substance-adalimumab 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/ap-humira40mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass"
* entry[=].resource = ap-humira40mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/authorizationhumira20mgsolutionforinjectioninprefilledsyringe"
* entry[=].resource = authorizationhumira20mgsolutionforinjectioninprefilledsyringe 
 

// Organization

* entry[+].fullUrl = "Organization/org-marketingauthorisationholder-abbviedeutschlandgmbhcokg-humira"
* entry[=].resource = org-marketingauthorisationholder-abbviedeutschlandgmbhcokg-humira 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/ppd-humira40mgsolutionforinjectioninprefilledsyringe2prefilledsyringes2alcoholpads"
* entry[=].resource = ppd-humira40mgsolutionforinjectioninprefilledsyringe2prefilledsyringes2alcoholpads 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/mpHumira40mgSolutionforinjectionSubcutaneoususeprefilledsyringeglass"
* entry[=].resource = mpHumira40mgSolutionforinjectionSubcutaneoususeprefilledsyringeglass 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/mid-humira40mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass"
* entry[=].resource = mid-humira40mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass 
 

