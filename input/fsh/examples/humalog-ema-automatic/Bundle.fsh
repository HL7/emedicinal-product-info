
Instance: bundlepackageleaflet-humaloginsulinlispro100uml
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet"
Description: "Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet ePI document"
Usage: #example

* id = "3414934e-ed2a-4f80-935a-337b1967881d" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2022-12-21T14:58:02Z"

// Composition
* entry[0].fullUrl = "Composition/4bce43a3-859a-41e5-9307-04856a305386"
* entry[0].resource = compositionHumalog

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/aad82e53-7081-4ec7-8096-1bc040c1d808"
* entry[=].resource = ingredient-for-humalog-glycerol 

// Ingredient

* entry[+].fullUrl = "Ingredient/d6d618e1-d8ed-4079-a9b5-8910787a31aa"
* entry[=].resource = ingredient-for-humalog-hydrochloricacid 

// Ingredient

* entry[+].fullUrl = "Ingredient/d92435f8-9e46-4f47-af4d-3d2b074fb974"
* entry[=].resource = ingredient-for-humalog-sodiumhydroxide 

// Ingredient

* entry[+].fullUrl = "Ingredient/6369e5c7-87f5-4dd8-bd21-83b16d2ad613"
* entry[=].resource = ingredient-for-humalog-sterilewaterforinjection 

// Ingredient

* entry[+].fullUrl = "Ingredient/a64fd38c-210c-4026-a862-9e78f6437f88"
* entry[=].resource = ingredient-for-humalog-insulinlispro 

// Ingredient

* entry[+].fullUrl = "Ingredient/8509f125-247c-415d-bbd0-4653fbcb4b34"
* entry[=].resource = ingredient-for-humalog-zincoxide 

// Ingredient

* entry[+].fullUrl = "Ingredient/b445b1f3-600f-4ab1-804d-d27bdb1ac888"
* entry[=].resource = ingredient-for-humalog-metacresol 

// Ingredient

* entry[+].fullUrl = "Ingredient/9a0ecb7a-322f-40c7-a419-c32bae02020a"
* entry[=].resource = ingredient-for-humalog-trometamol 
 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/xxxxx"
* entry[=].resource = ap-humalog100uml5prefilledpen 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/7cf83f38-dc7b-452e-a235-d50e78573b32"
* entry[=].resource = authorizationhumalog 
 

// Organization

* entry[+].fullUrl = "Organization/a8d56e1a-171d-443b-a1b3-c53bc210e643"
* entry[=].resource = org-marketingauthorisationholder-elilillynederlandbv-humalog 

// Organization

* entry[+].fullUrl = "Organization/aa8a3806-8a07-44fb-9c4a-8c9d99279f19"
* entry[=].resource = org-manufacturerapi-elilillyandcompany-humalog 

// Organization

* entry[+].fullUrl = "Organization/a555f4bf-6497-418a-8f15-37c109cc5e18"
* entry[=].resource = org-manufacturer-lillysa-humalog 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/cbb04f33-e239-4e7c-bd8a-6f2096e186e3"
* entry[=].resource = ppd-humalog100unitsmlkwikpensolutionforinjectioninaprefilledpen 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/4b4e0245-f48f-4694-a22d-b2f7fac0ec8f"
* entry[=].resource = mpHumalogMix50InsulinKwikPen3mlprefill 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/b25ccd96-6670-493e-8ca5-1efb42288e94"
* entry[=].resource = mid-humalog100uml5prefilledpen 
 

