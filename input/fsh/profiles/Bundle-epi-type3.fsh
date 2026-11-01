Profile: BundleEpiType3
Parent: Bundle
Id: bundle-epi-type3
Title: "Bundle - ePI Type 3"
Description: "Same rules as Bundle (ePI), with additional entry slices. This profile represents the constraints applied to the Bundle resource used in the ePI Type 3 (Clinical/Knowledge) FHIR Implementation Guide."
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
    deviceDefinition 0..* and
    clinicalUseDefinitionIndication 0..* and
    clinicalUseDefinitionContraindication 0..* and
    clinicalUseDefinitionInteraction 0..* and
    clinicalUseDefinitionUndesirableEffect 0..* and
    clinicalUseDefinitionWarning 0..* and
    group 0..*
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
* entry[deviceDefinition].resource only DeviceDefinition
* entry[clinicalUseDefinitionIndication] ^short = "The indications for the product, with any structured dosing"
* entry[clinicalUseDefinitionIndication].resource only ClinicalUseDefinitionIndicationUvEpi
* entry[clinicalUseDefinitionContraindication] ^short = "The contraindications for the product"
* entry[clinicalUseDefinitionContraindication].resource only ClinicalUseDefinitionContraindicationUvEpi
* entry[clinicalUseDefinitionInteraction] ^short = "The interactions of the product with other medicines, food or tests"
* entry[clinicalUseDefinitionInteraction].resource only ClinicalUseDefinitionInteractionUvEpi
* entry[clinicalUseDefinitionUndesirableEffect] ^short = "The undesirable effects of the product"
* entry[clinicalUseDefinitionUndesirableEffect].resource only ClinicalUseDefinitionUndesirableEffectUvEpi
* entry[clinicalUseDefinitionWarning] ^short = "The warnings and precautions for the product"
* entry[clinicalUseDefinitionWarning].resource only ClinicalUseDefinitionWarningUvEpi
* entry[group] ^short = "The populations referenced by the clinical use definitions and dosing"
* entry[group].resource only GroupUvEpi
* insert EpiBundleCommon
