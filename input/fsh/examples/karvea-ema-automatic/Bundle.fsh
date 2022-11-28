
Instance: bundlepackageleaflet-karvea75mg
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Karvea 75 mg Package Leaflet"
Description: "Bundle for Karvea 75 mg Package Leaflet ePI document"
Usage: #example

* id = "9023dafa-6c63-440b-bb2c-25728db53fdd" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "Composition/8448c750-1295-441a-8cd5-4977975b9987"
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
* entry[+].fullUrl = "Ingredient/63c8217b-cdec-4b4d-a6b7-edd74ec166d2"
* entry[=].resource = ingredient-for-karvea-hypromellose 

// Ingredient
* entry[+].fullUrl = "Ingredient/6b8f6570-c9b9-49fb-8e7b-8f4f15dbc78c"
* entry[=].resource = ingredient-for-karvea-macrogol3000 

// Ingredient
* entry[+].fullUrl = "Ingredient/ee1755ea-a4ce-4e86-a075-c13ebe42b4d3"
* entry[=].resource = ingredient-for-karvea-lactosemonohydrate 

// Ingredient
* entry[+].fullUrl = "Ingredient/1fa7de02-9c39-4fa2-890c-9bf8a1614e5f"
* entry[=].resource = ingredient-for-karvea-silicondioxide 

// Ingredient
* entry[+].fullUrl = "Ingredient/b91e0ff8-0ec8-48b3-b5b9-a21f607b2c47"
* entry[=].resource = ingredient-for-karvea-titaniumdioxide 

// Ingredient
* entry[+].fullUrl = "Ingredient/73d936c8-bb81-4889-8c47-233775553d0a"
* entry[=].resource = ingredient-for-karvea-irbesartan 

// Ingredient
* entry[+].fullUrl = "Ingredient/d6a60db8-09ce-4c30-9656-2f83aa7b77de"
* entry[=].resource = ingredient-for-karvea-croscarmellosesodium 

// Ingredient
* entry[+].fullUrl = "Ingredient/9ec6079d-d9d9-4f27-b21a-763f763d571d"
* entry[=].resource = ingredient-for-karvea-microcrystallinecellulose 

// Ingredient
* entry[+].fullUrl = "Ingredient/b9f3cd0b-e111-48b2-adf0-e3f646b254d5"
* entry[=].resource = ingredient-for-karvea-magnesiumstearate 

// Ingredient
* entry[+].fullUrl = "Ingredient/d80ecd29-5fbb-4635-987c-c18b98d049d9"
* entry[=].resource = ingredient-for-karvea-carnaubawax 
 

// Substance
* entry[+].fullUrl = "Substance/e9fa9b75-c539-4286-ade3-814cd69ac2fb"
* entry[=].resource = substance-irbesartan 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/xx"
* entry[=].resource = ap-karvea75mgtablet 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/d0800f9f-f88c-484c-98d2-6c1c35565f53"
* entry[=].resource = authorizationkarvea75mgtablet 
 

// Organization
* entry[+].fullUrl = "Organization/ca306644-074f-40e7-b5dd-bb9206506591"
* entry[=].resource = org-marketingauthorisationholder-sanofiaventisgroupe-karvea 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/9922ec3a-ba89-4582-9c40-0f5cc0ca1401"
* entry[=].resource = ppd-karvea75mgtabletblisterx28tablets 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/557820eb-c339-4874-bbf8-36a4caf54695"
* entry[=].resource = mpKarvea75mgtabletblisterx28 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/adaa0c2b-d6bc-4243-a660-6e29dfb4c605"
* entry[=].resource = mid-karvea75mgtablet 
 

