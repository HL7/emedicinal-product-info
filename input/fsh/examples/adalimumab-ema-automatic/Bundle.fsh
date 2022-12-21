
Instance: bundlepackageleaflet-adalimumab
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for adalimumab Package Leaflet"
Description: "Bundle for adalimumab Package Leaflet ePI document"
Usage: #example

* id = "32fd8f58-3157-4f6f-b573-ef503733865d" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/16/1157/003"
* type = #document
* timestamp = "2022-12-21T14:58:02Z"

// Composition
* entry[0].fullUrl = "Composition/b36a5546-37ff-401a-8900-c4c17468c3eb"
* entry[0].resource = compositionadalimumab

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/83f4c3b1-3869-4510-a1ca-4bbfe8380534"
* entry[=].resource = ingredient-for-adalimumab-insulinglargine 

// Ingredient

* entry[+].fullUrl = "Ingredient/df12e171-dff8-411a-af99-c010c9303e37"
* entry[=].resource = ingredient-for-adalimumab-lixisenatide 

// Ingredient

* entry[+].fullUrl = "Ingredient/a78806e8-85d0-4487-8729-01bf5647010d"
* entry[=].resource = ingredient-for-adalimumab-glycerol85whodd 
 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/e0c15229-dd83-4b70-8506-4b8361530b73"
* entry[=].resource = ap-adalimumab 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/b0d302df-0809-45f2-9046-c9c6fe23ce9a"
* entry[=].resource = authorizationadalimumab 
 

// Organization

* entry[+].fullUrl = "Organization/7d62454e-974b-42a7-b5c2-7027375e186d"
* entry[=].resource = org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/c5ef5176-707b-4da0-b53b-b6c8feb165f9"
* entry[=].resource = org-manufacturerapi-sanofiaventisdeutschlandgmbh-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/bd40ac9a-18f4-45dd-a437-3c411f05daf7"
* entry[=].resource = org-manufacturerbatchrelease-sanofiaventisdeutschlandgmbh-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/921154a1-350c-489d-9667-54d18cb4a972"
* entry[=].resource = org-medicinesregulatoryauthority-europeanmedicinesagency-adalimumab 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/7b386aaf-1f03-46d4-a961-9583d174f9f6"
* entry[=].resource = ppd-adalimumab 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/60ec6463-a0c6-472c-8ed2-ea4caee231bb"
* entry[=].resource = mpadalimumab 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/981d6b33-5dbb-4760-85ee-02824e7000bd"
* entry[=].resource = mid-adalimumab 
 

