Profile: BundleEpiType2
Parent: Bundle
Id: bundle-epi-type2
Title: "Bundle - ePI Type 2"
Description: "This profile represents the constraints applied to the Bundle resource used in the ePI Type 2 (Structured Data) FHIR Implementation Guide."
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #brr
* id 1..
* meta.versionId 1..
* meta.lastUpdated 1..
* meta.profile 1..
* identifier.system 1..1
* identifier.value 1..1
* type = #document
* timestamp 1..
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry 3..
* entry contains 
    composition 1..* and
    organization 1..* and
    medicinalProduct 1..* and
    manufacturedItem 0..* and
    administrableProduct 0..* and
    ingredient 0..* and
    substance 0..* and
    regulatedAuthorization 0..* and
    packagedProduct 0..*
* entry[composition].resource only CompositionEpiType1
* entry[organization].resource only OrganizationUvEpi
* entry[medicinalProduct].resource only MedicinalProductDefinitionUvEpi
* entry[manufacturedItem].resource only ManufacturedItemDefinitionUvEpi
* entry[administrableProduct].resource only AdministrableProductDefinitionUvEpi
* entry[ingredient].resource only IngredientUvEpi
* entry[substance].resource only SubstanceDefinitionUvEpi
* entry[regulatedAuthorization].resource only RegulatedAuthorizationUvEpi
* entry[packagedProduct].resource only PackagedProductDefinitionUvEpi
