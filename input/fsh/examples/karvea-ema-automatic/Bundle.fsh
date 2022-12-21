
Instance: bundlepackageleaflet-karvea75mg
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Karvea 75 mg Package Leaflet"
Description: "Bundle for Karvea 75 mg Package Leaflet ePI document"
Usage: #example

* id = "c6a49dce-3b9d-46a3-bb43-86daccddecad" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2022-12-21T16:16:31Z"

// Composition
* entry[0].fullUrl = "Composition/27c23ed5-551a-4d68-aa74-60993a728973"
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

* entry[+].fullUrl = "Ingredient/ca626f81-c251-4b1a-8354-1ec449a7236c"
* entry[=].resource = ingredient-for-karvea-hypromellose 

// Ingredient

* entry[+].fullUrl = "Ingredient/a340f876-dfb2-49b7-9734-df0be629739a"
* entry[=].resource = ingredient-for-karvea-macrogol3000 

// Ingredient

* entry[+].fullUrl = "Ingredient/7ec26d13-1d0b-463e-bd6f-fe41733d451b"
* entry[=].resource = ingredient-for-karvea-lactosemonohydrate 

// Ingredient

* entry[+].fullUrl = "Ingredient/75ca0bf6-4c4a-4b7e-92f3-cf54b17b1c5d"
* entry[=].resource = ingredient-for-karvea-silicondioxide 

// Ingredient

* entry[+].fullUrl = "Ingredient/ad724572-92b5-48c0-b0a1-c5c58c71db28"
* entry[=].resource = ingredient-for-karvea-titaniumdioxide 

// Ingredient

* entry[+].fullUrl = "Ingredient/0d6debc6-768f-4408-9a7a-54bb15f3d2cc"
* entry[=].resource = ingredient-for-karvea-irbesartan 

// Ingredient

* entry[+].fullUrl = "Ingredient/456b42e8-b240-4f8e-ac7b-998e3db5c1fc"
* entry[=].resource = ingredient-for-karvea-croscarmellosesodium 

// Ingredient

* entry[+].fullUrl = "Ingredient/a87b6dd5-63f5-4935-bcd6-bbce43967208"
* entry[=].resource = ingredient-for-karvea-microcrystallinecellulose 

// Ingredient

* entry[+].fullUrl = "Ingredient/d673d112-2a37-4b30-b2b4-3fbf2e4601e9"
* entry[=].resource = ingredient-for-karvea-magnesiumstearate 

// Ingredient

* entry[+].fullUrl = "Ingredient/236a3c7d-815e-456c-9dfb-8b4f3c74db73"
* entry[=].resource = ingredient-for-karvea-carnaubawax 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/561c91cd-a107-4a94-a9fd-5499295de87b"
* entry[=].resource = substance-irbesartan 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/xx"
* entry[=].resource = ap-karvea75mgtablet 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/da5f0f13-fa8b-4bae-80f0-079bdbff49f0"
* entry[=].resource = authorizationkarvea75mgtablet 
 

// Organization

* entry[+].fullUrl = "Organization/597c80a0-8e3f-42d1-a253-70c29ed85ba7"
* entry[=].resource = org-marketingauthorisationholder-sanofiaventisgroupe-karvea 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/207acbe0-fa9f-4abb-877a-898e217be558"
* entry[=].resource = ppd-karvea75mgtabletblisterx28tablets 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/3ef1016c-e13a-426d-be3c-3e0af73ebb05"
* entry[=].resource = mpKarvea75mgtabletblisterx28 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/a0b07754-10c3-4b1b-b437-11e3b8e02747"
* entry[=].resource = mid-karvea75mgtablet 
 

