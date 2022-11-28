
Instance: bundlepackageleaflet-karvea75mg
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Karvea 75 mg Package Leaflet"
Description: "Bundle for Karvea 75 mg Package Leaflet ePI document"
Usage: #example

* id = "5829d2ab-c739-4e96-996e-1014caadfe2a" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "Composition/efbbb97c-53d4-4b83-abb0-8c781e59dbfb"
* entry[0].resource = compositionKarvea

 
 

// ClinicalUseDefinition
* entry[+].fullUrl = "ClinicalUseDefinition/ii"
* entry[=].resource = contraindication-gastrointestinaldisorders 

// ClinicalUseDefinition
* entry[+].fullUrl = "ClinicalUseDefinition/yy"
* entry[=].resource = indication-psoriasis 

// ClinicalUseDefinition
* entry[+].fullUrl = "ClinicalUseDefinition/zz"
* entry[=].resource = interaction-methotrexate 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/067a5ac8-28c7-49dc-816f-6a90e68a951e"
* entry[=].resource = ingredient-for-karvea-hypromellose 

// Ingredient
* entry[+].fullUrl = "Ingredient/95ed9ab6-32dc-4d78-abe7-1e54d221c826"
* entry[=].resource = ingredient-for-karvea-macrogol3000 

// Ingredient
* entry[+].fullUrl = "Ingredient/1db2b8c7-270c-42c0-8c83-22ce5bee44b7"
* entry[=].resource = ingredient-for-karvea-lactosemonohydrate 

// Ingredient
* entry[+].fullUrl = "Ingredient/588505a6-be35-44c1-b279-18035fb158f7"
* entry[=].resource = ingredient-for-karvea-silicondioxide 

// Ingredient
* entry[+].fullUrl = "Ingredient/426328c5-a90f-4e98-b953-864f58de48b6"
* entry[=].resource = ingredient-for-karvea-titaniumdioxide 

// Ingredient
* entry[+].fullUrl = "Ingredient/85cf01da-1922-414c-9d2b-288ff351ab59"
* entry[=].resource = ingredient-for-karvea-irbesartan 

// Ingredient
* entry[+].fullUrl = "Ingredient/9a79f63e-4248-4fcb-b7ed-4f3164e55872"
* entry[=].resource = ingredient-for-karvea-croscarmellosesodium 

// Ingredient
* entry[+].fullUrl = "Ingredient/d9f2414a-ce0e-4878-88c3-1fabd45e0834"
* entry[=].resource = ingredient-for-karvea-microcrystallinecellulose 

// Ingredient
* entry[+].fullUrl = "Ingredient/a4a2969a-d32d-46df-9d16-8dfaf0b5340e"
* entry[=].resource = ingredient-for-karvea-magnesiumstearate 

// Ingredient
* entry[+].fullUrl = "Ingredient/01ec3fca-a39d-41a0-930a-062d7630aa7b"
* entry[=].resource = ingredient-for-karvea-carnaubawax 
 

// Substance
* entry[+].fullUrl = "Substance/7adb8f94-5c7e-4bd7-8101-8ce68aa3fde6"
* entry[=].resource = substance-irbesartan 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/xx"
* entry[=].resource = ap-karvea75mgtablet 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/c7a90c8a-0138-41f6-a646-c00caf79d71f"
* entry[=].resource = authorizationkarvea75mgtablet 
 

// Organization
* entry[+].fullUrl = "Organization/5eaeea10-382e-4765-a30c-9cea53e0d83e"
* entry[=].resource = org-marketingauthorisationholder-sanofiaventisgroupe-karvea 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/aa0614ce-c6c4-4347-ab01-e74863a62af3"
* entry[=].resource = ppd-karvea75mgtabletblisterx28tablets 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/faa28e90-61d7-42d5-a5b0-e2c487946b24"
* entry[=].resource = mpKarvea75mgtabletblisterx28 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/f8205dea-e20c-484d-9536-7dd00afe0d44"
* entry[=].resource = mid-karvea75mgtablet 
 

