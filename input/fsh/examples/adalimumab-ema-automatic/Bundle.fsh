
Instance: bundlepackageleaflet-adalimumab
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for adalimumab Package Leaflet"
Description: "Bundle for adalimumab Package Leaflet ePI document"
Usage: #example

* id = "f8ab1cce-d654-4e2e-b9b6-bee927a3e0e3" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/16/1157/003"
* type = #document
* timestamp = "2022-12-19T16:57:21Z"

// Composition
* entry[0].fullUrl = "Composition/69be4041-e893-4621-b41b-4f12236e30ed"
* entry[0].resource = compositionadalimumab

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/f5eba89a-53bf-41cc-a00f-a81330062946"
* entry[=].resource = ingredient-for-adalimumab-insulinglargine 

// Ingredient

* entry[+].fullUrl = "Ingredient/34734d5b-c7cf-4a3e-bf87-1412db87476e"
* entry[=].resource = ingredient-for-adalimumab-lixisenatide 

// Ingredient

* entry[+].fullUrl = "Ingredient/06d11577-dc08-4fe4-b9f3-3b98f8e4159b"
* entry[=].resource = ingredient-for-adalimumab-glycerol85 
 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/88272368-f0bf-4222-aec0-4829b44b6d0b"
* entry[=].resource = ap-adalimumab 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/36aab683-567b-42c5-a65c-b3c2749b4660"
* entry[=].resource = authorizationadalimumab 
 

// Organization

* entry[+].fullUrl = "Organization/9986b39a-e820-49a9-9b65-de34d6079331"
* entry[=].resource = org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/a86857b5-0210-4df3-b550-e326ab3e2101"
* entry[=].resource = org-manufacturerapi-sanofiaventisdeutschlandgmbh-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/6f34afc3-66a7-4410-99ad-53604ea211f4"
* entry[=].resource = org-manufacturerbatchrelease-sanofiaventisdeutschlandgmbh-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/dbeccd59-b7ba-4640-a617-ad9d910e71bf"
* entry[=].resource = org-medicinesregulatoryauthority-europeanmedicinesagency-adalimumab 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/560639ae-8c6a-4f98-9a5b-455534b1b16a"
* entry[=].resource = ppd-adalimumab 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/8e4f1fbf-70e9-470a-9694-e0168320b56c"
* entry[=].resource = mpadalimumab 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/3cc3914b-e0f5-43f4-b4fc-c02e7c70ecf7"
* entry[=].resource = mid-adalimumab 
 

