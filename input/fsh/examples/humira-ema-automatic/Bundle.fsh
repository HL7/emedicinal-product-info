
Instance: bundlepackageleaflet-humira
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for humira Package Leaflet"
Description: "Bundle for humira Package Leaflet ePI document"
Usage: #example

* id = "79bab6c3-a700-4dec-8eb6-93838d7c89ca" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "nan"
* type = #document
* timestamp = "2023-01-14T06:51:01Z"

// Composition
* entry[0].fullUrl = "Composition/09190c7d-0709-4c89-8f0f-f5387209d8d3"
* entry[0].resource = compositionhumira

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/30687b87-22d8-44ab-a4a2-f18313da53a0"
* entry[=].resource = ingredient-for-humira-mannitol 

// Ingredient

* entry[+].fullUrl = "Ingredient/e40988d2-56e7-4fb0-b8ba-85db0ae4285c"
* entry[=].resource = ingredient-for-humira-polysorbate80 

// Ingredient

* entry[+].fullUrl = "Ingredient/39892794-ad07-45db-8ae6-b8d347af2214"
* entry[=].resource = ingredient-for-humira-adalimumab 

// Ingredient

* entry[+].fullUrl = "Ingredient/29213fe3-c000-44b1-94be-9897488803dd"
* entry[=].resource = ingredient-for-humira-sterilewaterforinjection 

// Ingredient

* entry[+].fullUrl = "Ingredient/99c456af-1be5-4628-a91f-73f2cbbb1640"
* entry[=].resource = ingredient-for-humira-citricacidmonohydrate 

// Ingredient

* entry[+].fullUrl = "Ingredient/f143e930-033f-4a6c-a424-13fa6e0759e2"
* entry[=].resource = ingredient-for-humira-sodiumcitrateunspecifiedform 

// Ingredient

* entry[+].fullUrl = "Ingredient/c4046be8-3e4c-4246-b341-7193619567c6"
* entry[=].resource = ingredient-for-humira-sodiumphosphatemonobasicdihydrate 

// Ingredient

* entry[+].fullUrl = "Ingredient/cb2ccd72-9869-4e99-8ba4-8666683577e2"
* entry[=].resource = ingredient-for-humira-sodiumphosphatedibasicdihydrate 

// Ingredient

* entry[+].fullUrl = "Ingredient/807a113d-23dc-4b4f-a080-f57da3fd1869"
* entry[=].resource = ingredient-for-humira-sodiumchloride 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/8c3026bb-ea10-4ea3-a515-c0b3aff128b1"
* entry[=].resource = substance-adalimumab 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/5464e111-d628-476a-a923-743d360b6005"
* entry[=].resource = ap-humira40mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/1ebd9cd6-2345-452b-8e79-33632c992074"
* entry[=].resource = authorizationhumira20mgsolutionforinjectioninprefilledsyringe 
 

// Organization

* entry[+].fullUrl = "Organization/3797d9a8-27b8-45a6-a7b5-5c7f233d16c9"
* entry[=].resource = org-marketingauthorisationholder-abbviedeutschlandgmbhcokg-humira 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/630369e0-f329-45c8-b6a1-ad76f161422f"
* entry[=].resource = ppd-humira40mgsolutionforinjectioninprefilledsyringe2prefilledsyringes2alcoholpads 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/bf0ee3f3-ba40-486a-a3f4-61699e17f5f0"
* entry[=].resource = mpHumira40mgSolutionforinjectionSubcutaneoususeprefilledsyringeglass 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/60e4b86f-1f6e-449d-9ea3-1f2d1005a0af"
* entry[=].resource = mid-humira40mgsolutionforinjectionsubcutaneoususeprefilledsyringeglass 
 

