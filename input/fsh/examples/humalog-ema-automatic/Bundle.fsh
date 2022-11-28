
Instance: bundlepackageleaflethumaloginsulinlispro100uml
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet"
Description: "Bundle for Humalog Insulin Lispro 100u/ml Package Leaflet ePI document"
Usage: #example

* id = "d5e5bc01-bc34-49fb-aaf0-b4815c0a14df" 
* identifier.system = "https://www.gravitatehealth.eu/sid/doc" 
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[0].fullUrl = "Composition/4ce6b9e7-66b2-4462-a008-66cea2105b02"
* entry[0].resource = compositionHumalog

 
 
 

 
 

// Ingredient
* entry[+].fullUrl = "Ingredient/31cfd78c-1e9a-4f4b-aa0d-afe63630ec88"
* entry[=].resource = ingredient-for-humalog-glycerol 

// Ingredient
* entry[+].fullUrl = "Ingredient/7a982640-cf19-4a7d-83dd-7ab5188e15c8"
* entry[=].resource = ingredient-for-humalog-hydrochloricacid 

// Ingredient
* entry[+].fullUrl = "Ingredient/a751569d-13ff-495c-80c3-0ee91b1a36e6"
* entry[=].resource = ingredient-for-humalog-sodiumhydroxide 

// Ingredient
* entry[+].fullUrl = "Ingredient/9cb845e8-fa9d-4552-b4e9-cea43e7b1716"
* entry[=].resource = ingredient-for-humalog-waterforinjections 

// Ingredient
* entry[+].fullUrl = "Ingredient/3b772d7a-88fc-4fb3-a838-137e003d1b6a"
* entry[=].resource = ingredient-for-humalog-insulinlispro 

// Ingredient
* entry[+].fullUrl = "Ingredient/fd47943b-44c7-44a0-bf72-73b2f20e1b62"
* entry[=].resource = ingredient-for-humalog-zincoxide 

// Ingredient
* entry[+].fullUrl = "Ingredient/49272e37-fca8-433b-97d9-be3f6446c78c"
* entry[=].resource = ingredient-for-humalog-metacresol 

// Ingredient
* entry[+].fullUrl = "Ingredient/9dd7a42a-fd76-4797-9bd2-b64b6ba3b12a"
* entry[=].resource = ingredient-for-humalog-trometamol 
 
 

// AdministrableProductDefinition
* entry[+].fullUrl = "AdministrableProductDefinition/xxxxx"
* entry[=].resource = adminproducthumalog100uml5prefilledpen 
 

// RegulatedAuthorization
* entry[+].fullUrl = "RegulatedAuthorization/9496d90e-abed-4763-8699-f09ddd5f956f"
* entry[=].resource = authorizationhumalog 
 

// Organization
* entry[+].fullUrl = "Organization/cfb5470b-ccb4-4430-9ec2-5d07ce2f64a6"
* entry[=].resource = marketingauthorisationholder-elilillynederlandb.v.-humalog 

// Organization
* entry[+].fullUrl = "Organization/13495019-60f5-4ea2-83e8-32cca6b85816"
* entry[=].resource = manufacturerapi-elilillyandcompany-humalog 

// Organization
* entry[+].fullUrl = "Organization/3dccb574-9202-4fbc-8a86-77b31b45372f"
* entry[=].resource = manufacturer-lillys.a.-humalog 
 

// PackagedProductDefinition
* entry[+].fullUrl = "PackagedProductDefinition/0d92a800-adf6-4961-b450-5f36e9690054"
* entry[=].resource = humalog100units/mlkwikpensolutionforinjectioninapre-filledpen 
 

// MedicinalProductDefinition
* entry[+].fullUrl = "MedicinalProductDefinition/bf57ee08-4e88-4b54-84c3-09c54bf672f2"
* entry[=].resource = HumalogMix50InsulinKwikPen,3mlpre-fill 
 

// ManufacturedItemDefinition
* entry[+].fullUrl = "ManufacturedItemDefinition/03bd1911-aa03-439e-8bf7-a2e5b515e9be"
* entry[=].resource = humalog100u/ml5pre-filledpen 
 

