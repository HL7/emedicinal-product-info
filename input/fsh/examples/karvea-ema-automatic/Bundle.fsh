
Instance: bundlepackageleaflet-karvea75mg
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Karvea 75 mg Package Leaflet"
Description: "Bundle for Karvea 75 mg Package Leaflet ePI document"
Usage: #example

* id = "3fd23bc1-ac5c-488d-b68b-255167169578" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2022-12-19T16:57:21Z"

// Composition
* entry[0].fullUrl = "Composition/b36efa6e-2d0b-4ded-ae9d-4363cdc2861d"
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

* entry[+].fullUrl = "Ingredient/b8011f38-5ed8-413d-91ae-2e5c5fecb961"
* entry[=].resource = ingredient-for-karvea-hypromellose 

// Ingredient

* entry[+].fullUrl = "Ingredient/7dbe4200-4a54-4071-8682-4a25b7f59bae"
* entry[=].resource = ingredient-for-karvea-macrogol3000 

// Ingredient

* entry[+].fullUrl = "Ingredient/03bd2d5b-aaab-4e43-9feb-7e29e33e0671"
* entry[=].resource = ingredient-for-karvea-lactosemonohydrate 

// Ingredient

* entry[+].fullUrl = "Ingredient/7209fe09-1075-4b21-b5c0-c23ab335186d"
* entry[=].resource = ingredient-for-karvea-silicondioxide 

// Ingredient

* entry[+].fullUrl = "Ingredient/dd7bb0d9-b895-42ec-b209-8b308ee0f6f0"
* entry[=].resource = ingredient-for-karvea-titaniumdioxide 

// Ingredient

* entry[+].fullUrl = "Ingredient/af5afca8-ae8b-4e94-b320-28169e450808"
* entry[=].resource = ingredient-for-karvea-irbesartan 

// Ingredient

* entry[+].fullUrl = "Ingredient/b302b97b-8a6a-45e0-8c10-b34399f695fe"
* entry[=].resource = ingredient-for-karvea-croscarmellosesodium 

// Ingredient

* entry[+].fullUrl = "Ingredient/043576d0-7295-4ba2-af1a-4e1d1500fd15"
* entry[=].resource = ingredient-for-karvea-microcrystallinecellulose 

// Ingredient

* entry[+].fullUrl = "Ingredient/8e157774-1280-4048-bd2a-e6e0bb452707"
* entry[=].resource = ingredient-for-karvea-magnesiumstearate 

// Ingredient

* entry[+].fullUrl = "Ingredient/055a3eb3-f16b-49f8-8c6c-305fa03e8526"
* entry[=].resource = ingredient-for-karvea-carnaubawax 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/343f80bb-2710-4d58-8450-2b9476c16e9a"
* entry[=].resource = substance-irbesartan 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/xx"
* entry[=].resource = ap-karvea75mgtablet 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/5db7e73a-75b8-43ef-b2da-9138d72b55b7"
* entry[=].resource = authorizationkarvea75mgtablet 
 

// Organization

* entry[+].fullUrl = "Organization/edc2dc59-5e79-4486-a7f4-ab2d73c76230"
* entry[=].resource = org-marketingauthorisationholder-sanofiaventisgroupe-karvea 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/f1bce7a1-4ad9-4268-932a-d2025793182e"
* entry[=].resource = ppd-karvea75mgtabletblisterx28tablets 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/3eebcfec-8f3e-450b-b348-68e12e7cde87"
* entry[=].resource = mpKarvea75mgtabletblisterx28 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/2c1a500a-c4a2-4f4b-9836-b4661b89f882"
* entry[=].resource = mid-karvea75mgtablet 
 

