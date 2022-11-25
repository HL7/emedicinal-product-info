
Instance: bundlepackageleafletkarvea75mg
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Karvea 75 mg Package Leaflet"
Description: "Bundle for Karvea 75 mg Package Leaflet ePI document"
Usage: #example

* id = "7606b64e-4610-4e08-b523-c20dadf40d79" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = abadfd0b-0fa1-421e-b517-bd3255e147b9
* entry[0].resource = compositionKarvea

 
// ClinicalUseDefinition
* entry[+].fullUrl = "ClinicalUseDefinition/ii"
* entry[=].resource = contraindication-gastrointestinaldisorders 
 
// Ingredient
* entry[+].fullUrl = "Ingredient/25dd4001-fdfd-4c6f-870b-b2ff00610312"
* entry[=].resource = ingredienthypromellose 
// Substance
* entry[+].fullUrl = "Substance/baa3f934-67dd-437c-9001-7cdac7864fe7"
* entry[=].resource = substance-irbesartan 
// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/xx"
* entry[=].resource = adminproductkarvea75mgtablet 
// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/b5aaa57a-581e-4e2d-8b1e-ea795eb6d8e5"
* entry[=].resource = authorizationkarvea75mgtablet 
// Organization
* entry[+].fullUrl = "Organization/506d4d7c-794e-4483-98f8-8d3c0a6e136e"
* entry[=].resource = sanofi-aventisgroupe 
// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/e6ebfe41-8862-49f3-a17d-b05c42d0dba2"
* entry[=].resource = karvea75mgtabletblisterx28tablets 
// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/0c7c4767-29d5-494d-aa24-3d852707f07a"
* entry[=].resource = Karvea75mgtabletblisterx28 
// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/db028fa6-4f10-4dc8-8025-9f65b599bc7b"
* entry[=].resource = karvea75mgtablet 
