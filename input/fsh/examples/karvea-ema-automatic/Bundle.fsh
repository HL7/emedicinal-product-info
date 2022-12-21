
Instance: bundlepackageleaflet-karvea75mg
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Karvea 75 mg Package Leaflet"
Description: "Bundle for Karvea 75 mg Package Leaflet ePI document"
Usage: #example

* id = "3c41afb5-2f2b-47c2-a44c-b981c51c1e6b" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2022-12-21T14:58:02Z"

// Composition
* entry[0].fullUrl = "Composition/dd7fbe89-5f1e-4249-9b7a-1e9516626d35"
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

* entry[+].fullUrl = "Ingredient/8a100868-eda9-4025-87cb-dfff69e335fd"
* entry[=].resource = ingredient-for-karvea-hypromellose 

// Ingredient

* entry[+].fullUrl = "Ingredient/bd77687d-abbc-489d-8fc7-7911b4087044"
* entry[=].resource = ingredient-for-karvea-macrogol3000 

// Ingredient

* entry[+].fullUrl = "Ingredient/73debec9-ad84-43ef-8861-a4e69672669b"
* entry[=].resource = ingredient-for-karvea-lactosemonohydrate 

// Ingredient

* entry[+].fullUrl = "Ingredient/5ff2e084-aabc-4137-9bf1-bd00170b9c93"
* entry[=].resource = ingredient-for-karvea-silicondioxide 

// Ingredient

* entry[+].fullUrl = "Ingredient/7e11e812-9bba-458f-93dc-59858c5a8e22"
* entry[=].resource = ingredient-for-karvea-titaniumdioxide 

// Ingredient

* entry[+].fullUrl = "Ingredient/19ee147e-83ee-402e-b5b2-b4bceee0c9ef"
* entry[=].resource = ingredient-for-karvea-irbesartan 

// Ingredient

* entry[+].fullUrl = "Ingredient/6c85a010-e8db-422c-8c2d-733286096ac8"
* entry[=].resource = ingredient-for-karvea-croscarmellosesodium 

// Ingredient

* entry[+].fullUrl = "Ingredient/95bbfdd8-3c4e-425b-bc63-4b81c2d45b27"
* entry[=].resource = ingredient-for-karvea-microcrystallinecellulose 

// Ingredient

* entry[+].fullUrl = "Ingredient/08541ea9-c050-4108-b22b-5a85b90ac999"
* entry[=].resource = ingredient-for-karvea-magnesiumstearate 

// Ingredient

* entry[+].fullUrl = "Ingredient/0f9cde82-4460-4d6b-bfb7-53f39f49679f"
* entry[=].resource = ingredient-for-karvea-carnaubawax 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/8bc59d0d-6f16-40cc-941f-c8098a7d0438"
* entry[=].resource = substance-irbesartan 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/xx"
* entry[=].resource = ap-karvea75mgtablet 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/39d1e4e1-995d-4bcd-8557-3ebb2cc4ec8c"
* entry[=].resource = authorizationkarvea75mgtablet 
 

// Organization

* entry[+].fullUrl = "Organization/9b4caa46-51ab-4931-b51c-e28bd93d8fac"
* entry[=].resource = org-marketingauthorisationholder-sanofiaventisgroupe-karvea 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/2d23c1cf-8862-4282-9c44-9a1365d5d508"
* entry[=].resource = ppd-karvea75mgtabletblisterx28tablets 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/e9e8505b-5f85-413d-933a-397ea01a5e73"
* entry[=].resource = mpKarvea75mgtabletblisterx28 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/2e87e789-2075-4d24-b9aa-161c904415be"
* entry[=].resource = mid-karvea75mgtablet 
 

