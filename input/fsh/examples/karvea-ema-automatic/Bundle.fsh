
Instance: bundlepackageleafletkarvea75mg
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Karvea 75 mg Package Leaflet"
Description: "Bundle for Karvea 75 mg Package Leaflet ePI document"
Usage: #example

* id = "66847d8d-7ebf-4e23-8838-92e3f5a25622" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "f46a3ecf-fc6c-46e2-abd1-1e65d8c7854b"
* entry[0].resource = compositionKarvea

 
// ClinicalUseDefinition
* entry[+].fullUrl = "ii"
* entry[=].resource = contraindication-gastrointestinaldisorders 
 
// Ingredient
* entry[+].fullUrl = "07c15d46-2578-4736-a8cf-b83b435a1fa3"
* entry[=].resource = ingredienthypromellose 
// Substance
* entry[+].fullUrl = "6fe1bab5-bf55-402f-849f-1f8881bc11f9"
* entry[=].resource = substance-irbesartan 
// AdministrableProductDefinition
* entry[+].fullUrl = "xx"
* entry[=].resource = adminproductkarvea75mgtablet 
// RegulatedAuthorization
* entry[+].fullUrl = "b2ad138a-1b90-4cb5-b5cb-5e95b5046e1a"
* entry[=].resource = authorizationkarvea75mgtablet 
// Organization
* entry[+].fullUrl = "1e7c5e9e-8cbf-4fbd-ba1c-db52b4a5d39d"
* entry[=].resource = sanofi-aventisgroupe 
// PackagedProductDefinition
* entry[+].fullUrl = "ecb515bf-4e5d-404e-8993-4d9780f67cf7"
* entry[=].resource = karvea75mgtabletblisterx28tablets 
// MedicinalProductDefinition
* entry[+].fullUrl = "3c964484-4beb-48f9-96b6-bd90b5d5a704"
* entry[=].resource = Karvea75mgtabletblisterx28 
// ManufacturedItemDefinition
* entry[+].fullUrl = "16a29d3d-bf8c-4be3-a443-8b2998b6f5aa"
* entry[=].resource = karvea75mgtablet 
