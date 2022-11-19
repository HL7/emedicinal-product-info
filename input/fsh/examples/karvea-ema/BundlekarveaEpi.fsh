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
* entry[0].fullUrl = "urn:uuid:e63f72b2-993f-48b1-b7cb-539b1ed71571"
* entry[0].resource = compositionkarvea75

//  * insert bundleEntry (CompositionUvEpi, compositionkarvea75)

// Organizations
* entry[0].fullUrl = "urn:uuid:d71bf884-90eb-47f9-81b7-fa81ecec7e75"
* entry[0].resource = sanofiaventisgroupe

// * entry[+]
  // * insert bundleEntry (OrganizationUvEpi, sanofiaventisgroupe)

// authorizations
// * entry[+]
  // * insert bundleEntry (RegulatedAuthorizationUvEpi,authorizationkarvea75)

// medicinal products
* entry[0].fullUrl = "urn:uuid:800a51a2-d81d-49a4-a4eb-f2417d301837"
* entry[0].resource = karvea75mgblisterx28


// * entry[+]
  // * insert bundleEntry (MedicinalProductDefinitionUvEpi,karvea75mgblisterx28)

// packaged product
// * entry[+]
  // * insert bundleEntry (PackagedProductDefinitionUvEpi,packagebottlex28)

// administrable product
// * entry[+]
  // * insert bundleEntry (AdministrableProductDefinitionUvEpi,adminproductkarvea75)

// manufactured items
// * entry[+]
  // * insert bundleEntry (ManufacturedItemDefinitionUvEpi,manitemkarvea75)

// ingredients
// * entry[+]
  // * insert bundleEntry (IngredientUvEpi,irbesartan)

// * entry[+]
  // * insert bundleEntry (IngredientUvEpi,carnaubawax)

// * entry[+]
  // * insert bundleEntry (IngredientUvEpi,Croscarmellosesodium)

// * entry[+]
  // * insert bundleEntry (IngredientUvEpi,Hypromellose)

// * entry[+]
  // * insert bundleEntry (IngredientUvEpi,lactosemonohydrate)

// * entry[+]
  // * insert bundleEntry (IngredientUvEpi,Macrogol3000)

// * entry[+]
  // * insert bundleEntry (IngredientUvEpi,Magnesiumstearate)

// * entry[+]
  // * insert bundleEntry (IngredientUvEpi,Microcrystallinecellulose)

// * entry[+]
  // * insert bundleEntry (IngredientUvEpi,Silicondioxide)

// * entry[+]
  // * insert bundleEntry (IngredientUvEpi,titaniumdioxide)

// Packaged Product
// * entry[+]
  // * insert bundleEntry (PackagedProductDefinitionUvEpi,packagebottlex28)

// Clinical Use Definition - Indication
// * entry[+]
  // * insert bundleEntry (ClinicalUseDefinitionIndicationUvEpi,indication)

// Clinical Use Definition - Contraindication
// * entry[+]
  // * insert bundleEntry (ClinicalUseDefinitionContraindicationUvEpi,contraindication)

// Clinical Use Definition - Interaction
// * entry[+]
  // * insert bundleEntry (ClinicalUseDefinitionInteractionUvEpi,interactionmethotrexate)

// Substance
// * entry[+]
  // * insert bundleEntry (SubstanceDefinitionUvEpi,substanceirbesartan)