Profile: BundleEpiType2
Parent: Bundle
Id: bundle-epi-type2
Title: "Bundle - ePI Type 2"
Description: "Same rules as Bundle (ePI), with additional entry slices. This profile represents the constraints applied to the Bundle resource used in the ePI Type 2 (Structured Data) FHIR Implementation Guide."
* insert EpiBundleSlicing(#open)
* entry contains 
    composition 1..1 and
    organization 1..* and
    medicinalProduct 1..* and
    manufacturedItem 0..* and
    administrableProduct 0..* and
    ingredient 0..* and
    substance 0..* and
    regulatedAuthorization 0..* and
    packagedProduct 0..*
* entry[organization].resource only OrganizationUvEpi
* entry[medicinalProduct].resource only MedicinalProductDefinitionUvEpi
* entry[manufacturedItem].resource only ManufacturedItemDefinitionUvEpi
* entry[administrableProduct].resource only AdministrableProductDefinitionUvEpi
* entry[ingredient].resource only IngredientUvEpi
* entry[substance].resource only SubstanceDefinitionUvEpi
* entry[regulatedAuthorization].resource only RegulatedAuthorizationUvEpi
* entry[packagedProduct].resource only PackagedProductDefinitionUvEpi
* insert EpiBundleCommon
