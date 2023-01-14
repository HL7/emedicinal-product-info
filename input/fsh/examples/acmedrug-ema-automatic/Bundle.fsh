
Instance: bundlepackageleaflet-acmedrug
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for acmedrug Package Leaflet"
Description: "Bundle for acmedrug Package Leaflet ePI document"
Usage: #example

* id = "d6e85a11-0af5-446d-8599-247c36a6b4f9" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2023-01-14T06:51:01Z"

// Composition
* entry[0].fullUrl = "Composition/632051cb-e386-4de9-a8c5-dd87f988a949"
* entry[0].resource = compositionacmedrug

 
 
 

 
 

// Ingredient

* entry[+].fullUrl = "Ingredient/01835ddf-bbda-4ea9-8f6a-b5b61d7f5001"
* entry[=].resource = ingredient-for-acmedrug-acmedruging3 

// Ingredient

* entry[+].fullUrl = "Ingredient/eec30466-070b-48a3-8b03-1133862a7bbe"
* entry[=].resource = ingredient-for-acmedrug-acmedruging2 

// Ingredient

* entry[+].fullUrl = "Ingredient/9e29382d-0d20-4716-b99f-b2cf9748c7d8"
* entry[=].resource = ingredient-for-acmedrug-acmedruging1 
 

// Substance
   
* entry[+].fullUrl = "SubstanceDefinition/52d77ee0-55ff-4ff9-a51f-04b5f471f3e8"
* entry[=].resource = substance-acmesub 
 

// AdministrableProductDefinition

* entry[+].fullUrl = "AdministrableProductDefinition/951b2c0b-f276-4111-9b1f-324fe6eb4dc0"
* entry[=].resource = ap-acmedrug 
 

// RegulatedAuthorization

* entry[+].fullUrl = "RegulatedAuthorization/3d9beb0f-a730-421a-aed3-c27a21de96ec"
* entry[=].resource = authorizationacmedrug 
 

// Organization

* entry[+].fullUrl = "Organization/0529fe1a-5535-42e8-b433-fabfba4aa15d"
* entry[=].resource = org-marketingauthorisationholder-acmeindustry-acmedrug 
 

// PackagedProductDefinition

* entry[+].fullUrl = "PackagedProductDefinition/2efcffec-fdd7-4bd9-8128-40b4c1ffd209"
* entry[=].resource = ppd-acmedrugblistertabs 
 

// MedicinalProductDefinition

* entry[+].fullUrl = "MedicinalProductDefinition/698e26d5-14dc-4e90-9092-399fe112cc4f"
* entry[=].resource = mpacmedrugman 
 

// ManufacturedItemDefinition

* entry[+].fullUrl = "ManufacturedItemDefinition/566f3244-87c7-4e84-9c35-7109759bf345"
* entry[=].resource = mid-acmedrugman 
 

