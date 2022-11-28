
Instance: bundlepackageleaflet-humaloginsulinlispro100uml
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet"
Description: "Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet ePI document"
Usage: #example

* id = "b3382bbd-49b2-4965-b259-2a9394f39a9f" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "Composition/ce8a7816-ded4-42eb-a027-21cd1c073d7c"
* entry[0].resource = compositionHumalog

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/b7101563-64b7-440f-82b0-bf6b90d6b090"
* entry[=].resource = ingredient-for-humalog-glycerol 

// Ingredient
* entry[+].fullUrl = "Ingredient/af84067f-3e96-41c7-b9f5-899f82649631"
* entry[=].resource = ingredient-for-humalog-hydrochloricacid 

// Ingredient
* entry[+].fullUrl = "Ingredient/4167d0ab-62f0-4471-9d13-6adc179ca1ee"
* entry[=].resource = ingredient-for-humalog-sodiumhydroxide 

// Ingredient
* entry[+].fullUrl = "Ingredient/ed74b2d2-91bc-4646-b5a8-7cffebebb8d8"
* entry[=].resource = ingredient-for-humalog-waterforinjections 

// Ingredient
* entry[+].fullUrl = "Ingredient/e5933d70-dc88-47f4-b90f-b51a0cef1e9a"
* entry[=].resource = ingredient-for-humalog-insulinlispro 

// Ingredient
* entry[+].fullUrl = "Ingredient/48b74fc7-675a-4cc4-9d81-73eb6e29d40d"
* entry[=].resource = ingredient-for-humalog-zincoxide 

// Ingredient
* entry[+].fullUrl = "Ingredient/0d5d1a1d-82e8-41e1-88a3-d1dba4274c5a"
* entry[=].resource = ingredient-for-humalog-metacresol 

// Ingredient
* entry[+].fullUrl = "Ingredient/0c68a637-b160-4b70-8fb2-9a01c28981cd"
* entry[=].resource = ingredient-for-humalog-trometamol 
 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/xxxxx"
* entry[=].resource = ap-humalog100uml5prefilledpen 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/cfaef28d-506d-410d-b689-8796b7a4d8c3"
* entry[=].resource = authorizationhumalog 
 

// Organization
* entry[+].fullUrl = "Organization/4128611d-15a4-47c3-8bec-cde2fae84429"
* entry[=].resource = org-marketingauthorisationholder-elilillynederlandbv-humalog 

// Organization
* entry[+].fullUrl = "Organization/fe78f030-27a4-4a1c-a5c7-4ba1fedc4b2f"
* entry[=].resource = org-manufacturerapi-elilillyandcompany-humalog 

// Organization
* entry[+].fullUrl = "Organization/98b6dc4f-c2bb-4888-bb78-3abc7af95f4d"
* entry[=].resource = org-manufacturer-lillysa-humalog 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/1cb84090-83f3-44b9-8097-8d77541bef86"
* entry[=].resource = ppd-humalog100unitsmlkwikpensolutionforinjectioninaprefilledpen 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/164e9629-3831-419a-b7fc-284c4f7d3997"
* entry[=].resource = mpHumalogMix50InsulinKwikPen3mlprefill 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/bee84dd2-a5f5-437f-9739-bb108235e2c9"
* entry[=].resource = mid-humalog100uml5prefilledpen 
 

