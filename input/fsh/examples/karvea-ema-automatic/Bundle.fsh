
Instance: bundlepackageleafletkarvea75mg
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Karvea 75 mg Package Leaflet"
Description: "Bundle for Karvea 75 mg Package Leaflet ePI document"
Usage: #example

* id = "5374f00f-d1a2-4f10-bc93-259e7018c777" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "e28f0e80-581b-444a-a7b7-a1782e811cba"
* entry[0].resource = compositionKarvea

 
// ClinicalUseDefinition
* entry[+].fullUrl = "ii"
* entry[=].resource = contraindication-gastrointestinaldisorders 
 
// Ingredient
* entry[+].fullUrl = "d1e27b75-cca1-4aca-9182-3ccf7783e821"
* entry[=].resource = ingredienthypromellose 
// Substance
* entry[+].fullUrl = "ddba55b5-4172-4c9c-84c3-a10cf704ce3b"
* entry[=].resource = substance-irbesartan 
// AdministrableProductDefinition
* entry[+].fullUrl = "xx"
* entry[=].resource = adminproductkarvea75mgtablet 
// RegulatedAuthorization
* entry[+].fullUrl = "28d93e3e-ce89-4f68-b797-c77858c85170"
* entry[=].resource = authorizationkarvea75mgtablet 
// Organization
* entry[+].fullUrl = "f0a72637-628d-4ed8-8841-b3e6345b1d94"
* entry[=].resource = sanofi-aventisgroupe 
// PackagedProductDefinition
* entry[+].fullUrl = "d2a70ce1-54a9-43fa-9dd4-4b76e57faf01"
* entry[=].resource = karvea75mgtabletblisterx28tablets 
// MedicinalProductDefinition
* entry[+].fullUrl = "f0be6f90-48c2-4765-983b-622e7e122a26"
* entry[=].resource = Karvea75mgtabletblisterx28 
// ManufacturedItemDefinition
* entry[+].fullUrl = "df3ade98-1aa0-4120-b669-876a73883ec1"
* entry[=].resource = karvea75mgtablet 
