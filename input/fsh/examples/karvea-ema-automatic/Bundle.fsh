
Instance: bundlepackageleafletkarvea75mg
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Karvea 75 mg Package Leaflet"
Description: "Bundle for Karvea 75 mg Package Leaflet ePI document"
Usage: #example

* id = "9fbd5e81-a728-4fed-91ee-e776a38a8187" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "cca0194f-50f8-4e71-b7a0-a561b3d77cf5"
* entry[0].resource = compositionKarvea

 
// ClinicalUseDefinition
* entry[+].fullUrl = "ii"
* entry[=].resource = contraindication-gastrointestinaldisorders 
 
// Ingredient
* entry[+].fullUrl = "6dd755a3-20e3-4b93-b31f-7fbc6ea3fc84"
* entry[=].resource = ingredienthypromellose 
// Substance
* entry[+].fullUrl = "37e8b13f-27d0-4fb2-8621-e23881b9b699"
* entry[=].resource = substance-irbesartan 
// AdministrableProductDefinition
* entry[+].fullUrl = "xx"
* entry[=].resource = adminproductkarvea75mgtablet 
// RegulatedAuthorization
* entry[+].fullUrl = "4ce9dc07-9eab-498c-89fb-e68447570cb2"
* entry[=].resource = authorizationkarvea75mgtablet 
// Organization
* entry[+].fullUrl = "ab412c85-b8af-463b-ab20-4605091fe702"
* entry[=].resource = sanofi-aventisgroupe 
// PackagedProductDefinition
* entry[+].fullUrl = "578d2778-e67e-45d6-933c-5b48dae595d1"
* entry[=].resource = karvea75mgtabletblisterx28tablets 
// MedicinalProductDefinition
* entry[+].fullUrl = "7cd8930e-f989-433b-b26e-a06e00d31fd1"
* entry[=].resource = Karvea75mgtabletblisterx28 
// ManufacturedItemDefinition
* entry[+].fullUrl = "8eb4188d-8948-4db7-8a31-5c906e0b92c5"
* entry[=].resource = karvea75mgtablet 
