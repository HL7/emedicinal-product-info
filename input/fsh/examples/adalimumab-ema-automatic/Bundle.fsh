
Instance: bundlepackageleaflet-adalimumab
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for adalimumab Package Leaflet"
Description: "Bundle for adalimumab Package Leaflet ePI document"
Usage: #example

* id = "c01501bf-65bc-465d-a729-3cd78f649e53" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/16/1157/003"
* type = #document
* timestamp = "2022-12-21T16:16:31Z"

// Composition
* entry[0].fullUrl = "Composition/32ba818f-64d1-4310-9365-e403489a162f"
* entry[0].resource = compositionadalimumab

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/40b1de29-485d-434a-bb39-93271aa678e5"
* entry[=].resource = ingredient-for-adalimumab-insulinglargine 

// Ingredient

* entry[+].fullUrl = "Ingredient/3d8eb6a0-9a07-4fb3-b8fe-4955c09f8e2b"
* entry[=].resource = ingredient-for-adalimumab-lixisenatide 

// Ingredient

* entry[+].fullUrl = "Ingredient/acdc4d6b-2f5e-4995-8960-fce1ad2d6ba6"
* entry[=].resource = ingredient-for-adalimumab-glycerol85whodd 
 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/4ac809b3-57bd-4510-b831-f301e198853c"
* entry[=].resource = ap-adalimumab 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/778aa1de-69d4-417c-8933-78ffce374016"
* entry[=].resource = authorizationadalimumab 
 

// Organization

* entry[+].fullUrl = "Organization/898ff4b0-8754-4f50-a40f-417389803da1"
* entry[=].resource = org-marketingauthorisationholder-sanofiaventisgroupe-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/a1e292f0-fa42-483c-8bcb-57d4ab365233"
* entry[=].resource = org-manufacturerapi-sanofiaventisdeutschlandgmbh-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/e353c3e9-b509-4cbd-88e3-066be2e7e983"
* entry[=].resource = org-manufacturerbatchrelease-sanofiaventisdeutschlandgmbh-adalimumab 

// Organization

* entry[+].fullUrl = "Organization/6134d703-87b1-4d62-88ec-2d28be25591c"
* entry[=].resource = org-medicinesregulatoryauthority-europeanmedicinesagency-adalimumab 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/0ba0f862-8944-4ce1-b1de-37c0628f05b6"
* entry[=].resource = ppd-adalimumab 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/b52b0b45-cb42-4ba4-bebf-f8eb9dc22bd5"
* entry[=].resource = mpadalimumab 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/83e2b095-1be1-4eea-87d6-b7ae5008f0b4"
* entry[=].resource = mid-adalimumab 
 

