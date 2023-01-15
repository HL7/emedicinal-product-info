
Instance: bundlepackageleaflet-adalimumab
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for adalimumab Package Leaflet"
Description: "Bundle for adalimumab Package Leaflet ePI document"
Usage: #example

* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/16/1157/003"
* type = #document
* timestamp = "2023-01-14T16:28:14Z"

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

* entry[+].fullUrl = "Organization/org-b4249a5180d23ad521b23e06e99b7afd"
* entry[=].resource = org-b4249a5180d23ad521b23e06e99b7afd 

// Organization

* entry[+].fullUrl = "Organization/org-90385ec6a39a5d293a77ef9f7095bd30"
* entry[=].resource = org-90385ec6a39a5d293a77ef9f7095bd30 

// Organization

* entry[+].fullUrl = "Organization/org-591fe9c5de748b22eace6d084f2f041a"
* entry[=].resource = org-591fe9c5de748b22eace6d084f2f041a 

// Organization

* entry[+].fullUrl = "Organization/org-bcc70233ff79453d8ddfc13faa4dfb4e"
* entry[=].resource = org-bcc70233ff79453d8ddfc13faa4dfb4e 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/ppd-adalimumab"
* entry[=].resource = ppd-adalimumab 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/mpadalimumab"
* entry[=].resource = mpadalimumab 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/mid-adalimumab"
* entry[=].resource = mid-adalimumab 
 

