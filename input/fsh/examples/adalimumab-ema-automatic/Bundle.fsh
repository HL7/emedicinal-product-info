
Instance: bundlepackageleaflet-adalimumab
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for adalimumab Package Leaflet"
Description: "Bundle for adalimumab Package Leaflet ePI document"
Usage: #example

* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/16/1157/003"
* type = #document
* timestamp = "2023-01-14T16:01:46Z"

// Composition
* entry[0].fullUrl = "Composition/compositionadalimumab"
* entry[0].resource = compositionadalimumab

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-adalimumab-insulinglargine"
* entry[=].resource = ingredient-for-adalimumab-insulinglargine 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-adalimumab-lixisenatide"
* entry[=].resource = ingredient-for-adalimumab-lixisenatide 

// Ingredient

* entry[+].fullUrl = "Ingredient/ingredient-for-adalimumab-glycerol85whodd"
* entry[=].resource = ingredient-for-adalimumab-glycerol85whodd 
 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/ap-adalimumab"
* entry[=].resource = ap-adalimumab 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/authorizationadalimumab"
* entry[=].resource = authorizationadalimumab 
 

// Organization

* entry[+].fullUrl = "Organization/org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab"
* entry[=].resource = org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/org-manufacturerapi-sanofiaventisdeutschlandgmbh-adalimumab"
* entry[=].resource = org-manufacturerapi-sanofiaventisdeutschlandgmbh-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/org-manufacturerbatchrelease-sanofiaventisdeutschlandgmbh-adalimumab"
* entry[=].resource = org-manufacturerbatchrelease-sanofiaventisdeutschlandgmbh-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/org-medicinesregulatoryauthority-europeanmedicinesagency-adalimumab"
* entry[=].resource = org-medicinesregulatoryauthority-europeanmedicinesagency-adalimumab 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/ppd-adalimumab"
* entry[=].resource = ppd-adalimumab 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/mpadalimumab"
* entry[=].resource = mpadalimumab 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/mid-adalimumab"
* entry[=].resource = mid-adalimumab 
 

