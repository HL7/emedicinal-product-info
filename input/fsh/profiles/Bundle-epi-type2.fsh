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
    packagedProduct 0..* and
    deviceDefinition 0..*
* entry[organization] ^short = "The organizations referenced in the ePI (e.g., marketing authorization holder, manufacturer, regulator)"
* entry[organization].resource only OrganizationUvEpi
* entry[medicinalProduct] ^short = "The medicinal product(s) described by this ePI"
* entry[medicinalProduct].resource only MedicinalProductDefinitionUvEpi
* entry[manufacturedItem] ^short = "The manufactured item(s): the dose form in its primary packaging, before any necessary transformation"
* entry[manufacturedItem].resource only ManufacturedItemDefinitionUvEpi
* entry[administrableProduct] ^short = "The administrable product(s): the dose form for administration, after any necessary transformation"
* entry[administrableProduct].resource only AdministrableProductDefinitionUvEpi
* entry[ingredient] ^short = "The ingredients of the product (e.g., active substances, excipients)"
* entry[ingredient].resource only IngredientUvEpi
* entry[substance] ^short = "The substances referenced by the ingredients"
* entry[substance].resource only SubstanceDefinitionUvEpi
* entry[regulatedAuthorization] ^short = "The marketing authorization(s) for the product or package"
* entry[regulatedAuthorization].resource only RegulatedAuthorizationUvEpi
* entry[packagedProduct] ^short = "The marketed package presentation(s) of the product"
* entry[packagedProduct].resource only PackagedProductDefinitionUvEpi
* entry[deviceDefinition] ^short = "Any device supplied in the package (e.g., oral syringe, measuring spoon, inhaler)"
* entry[deviceDefinition].resource only DeviceDefinitionUvEpi
* insert EpiBundleCommon
