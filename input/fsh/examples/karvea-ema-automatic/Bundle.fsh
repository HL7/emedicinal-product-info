
Instance: bundlepackageleafletkarvea75mg
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Karvea 75 mg Package Leaflet"
Description: "Bundle for Karvea 75 mg Package Leaflet ePI document"
Usage: #example

* id = "996ea286-9eeb-4f9b-a5e6-b18511fb136f" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "Composition/5fef3008-ca68-4f9e-8bea-73a7d2fb657e"
* entry[0].resource = compositionKarvea

 
// ClinicalUseDefinition
* entry[+].fullUrl = "ClinicalUseDefinition/ii"
* entry[=].resource = contraindication-gastrointestinaldisorders 
 
// Ingredient
* entry[+].fullUrl = "Ingredient/57e140ed-af10-4e30-a6ca-76a9e8d6a8d7"
* entry[=].resource = ingredienthypromellose 
// Substance
* entry[+].fullUrl = "Substance/968027ff-a4cb-4d8f-83ca-2b68d25df7d5"
* entry[=].resource = substance-irbesartan 
// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/xx"
* entry[=].resource = adminproductkarvea75mgtablet 
// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/f93760e1-e84e-498a-8251-55d1bf9b7b85"
* entry[=].resource = authorizationkarvea75mgtablet 
// Organization
* entry[+].fullUrl = "Organization/deca5004-33c1-4d80-a25d-43f83bb71277"
* entry[=].resource = sanofi-aventisgroupe 
// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/5525ec14-3580-4787-955b-1a332f12ef45"
* entry[=].resource = karvea75mgtabletblisterx28tablets 
// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/e02a86aa-215d-45a7-afca-eda52266f54f"
* entry[=].resource = Karvea75mgtabletblisterx28 
// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/ad96f148-121c-41bc-8ba6-1274bb9a94bb"
* entry[=].resource = karvea75mgtablet 
