Instance: bundlepackageleaflet75
InstanceOf: BundleUvEpi
Title: "ePI document Bundle for Karvea 75 mg Package Leaflet"
Description: "Bundle for Karvea Package Leaflet ePI document"
Usage: #example

* identifier.system = "https://www.gravitatehealth.eu/sid/doc"
* identifier.value = "EU/1/96/007/035"
* type = #document
* timestamp = "2018-06-23T08:38:00+02:00"

// Composition
* entry[+].resource = compositionkarvea75
* entry[=].fullUrl = "http://example.org/Composition/compositionkarvea75"

// * entry[0]
//   * insert bundleEntry (CompositionUvEpi, compositionkarvea75)

// Organizations
* entry[+]
  * insert bundleEntry (OrganizationUvEpi, sanofiaventisgroupe)

// authorizations
* entry[+]
  * insert bundleEntry (RegulatedAuthorizationUvEpi,authorizationkarvea75)

// medicinal products
* entry[+]
  * insert bundleEntry (MedicinalProductDefinitionUvEpi,karvea75mgblisterx28)

// packaged product
* entry[+]
  * insert bundleEntry (PackagedProductDefinitionUvEpi,packagebottlex28)

// administrable product
* entry[+]
  * insert bundleEntry (AdministrableProductDefinitionUvEpi,adminproductkarvea75)

// manufactured items
* entry[+]
  * insert bundleEntry (ManufacturedItemDefinitionUvEpi,manitemkarvea75)

// ingredients
* entry[+]
  * insert bundleEntry (IngredientUvEpi,irbesartan)

* entry[+]
  * insert bundleEntry (IngredientUvEpi,carnaubawax)

* entry[+]
  * insert bundleEntry (IngredientUvEpi,Croscarmellosesodium)

* entry[+]
  * insert bundleEntry (IngredientUvEpi,Hypromellose)

* entry[+]
  * insert bundleEntry (IngredientUvEpi,lactosemonohydrate)

* entry[+]
  * insert bundleEntry (IngredientUvEpi,Macrogol3000)

* entry[+]
  * insert bundleEntry (IngredientUvEpi,Magnesiumstearate)

* entry[+]
  * insert bundleEntry (IngredientUvEpi,Microcrystallinecellulose)

* entry[+]
  * insert bundleEntry (IngredientUvEpi,Silicondioxide)

* entry[+]
  * insert bundleEntry (IngredientUvEpi,titaniumdioxide)

// Packaged Product
* entry[+]
  * insert bundleEntry (PackagedProductDefinitionUvEpi,packagebottlex28)