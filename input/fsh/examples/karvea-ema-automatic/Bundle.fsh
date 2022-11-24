
Instance: bundlepackageleafletkarvea75mg
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Karvea 75 mg Package Leaflet"
Description: "Bundle for Karvea 75 mg Package Leaflet ePI document"
Usage: #example

* id = "479b02e1-cb8c-450d-988e-2bf225ff9413" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "8e41a79c-274e-4f52-984e-e2dc2174bbdf"
* entry[0].resource = compositionKarvea

 
// ClinicalUseDefinition
* entry[+].fullUrl = "ii"
* entry[=].resource = contraindication-gastrointestinaldisorders 
 
// Ingredient
* entry[+].fullUrl = "9278143f-513c-4965-8ed6-12789e13a3fb"
* entry[=].resource = ingredienthypromellose 
// Substance
* entry[+].fullUrl = "79524c84-b17b-4c17-a69e-a9b9b9f1fe5f"
* entry[=].resource = substance-irbesartan 
// AdministrableProductDefinition
* entry[+].fullUrl = "xx"
* entry[=].resource = adminproductkarvea75mgtablet 
// RegulatedAuthorization
* entry[+].fullUrl = "d9901302-451f-4902-839a-5f4375895066"
* entry[=].resource = authorizationkarvea75mgtablet 
// Organization
* entry[+].fullUrl = "961e5052-6a8a-403a-b6ac-5e585c89de8e"
* entry[=].resource = sanofi-aventisgroupe 
// PackagedProductDefinition
* entry[+].fullUrl = "f556130a-9d5d-40d2-84a0-dbf2c92afbe4"
* entry[=].resource = karvea75mgtabletblisterx28tablets 
// MedicinalProductDefinition
* entry[+].fullUrl = "d2bbeade-13e5-445d-8ec0-ae25cae09680"
* entry[=].resource = Karvea75mgtabletblisterx28 
// ManufacturedItemDefinition
* entry[+].fullUrl = "1e8963b2-896e-4ad7-a162-85e07cdd272f"
* entry[=].resource = karvea75mgtablet 
