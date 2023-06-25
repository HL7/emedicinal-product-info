Profile: BundleUvEpi
Parent: Bundle
Id: Bundle-uv-epi
Title: "Bundle - ePI"
Description: "Medicinal product information is a pivotal source of regulated and scientifically validated information that assists healthcare professionals in prescribing and dispensing the medicine and informs consumers about its safe and effective use. This profile represents the constraints applied to the Bundle resource used in the Electronic Product Information (ePI) FHIR Implementation Guide."
* ^purpose = "This profile represents the constraints applied to the Bundle resource used to create an Electronic Product Information (ePI) document."
 
* insert SetFmmandStatusRule ( 2, trial-use )
* obeys bdl-epi-1
* . ^short = "Electronic Product Information Bundle Document"
* . ^definition = "Electronic Product Information Bundle Document. A container for the collection of resources that make up the ePI document."

* identifier 1.. 
  * ^short = "Persistent identifier for the bundle"
  * ^definition = "Persistent identifier that remains the same for all versions of this ePI. The identifier remains the same regardless of any changes to the Bundle and regardless of any changes made to the Resources within the Bundle. This purpose of this identifier is to ensure all versions of an ePI can be collected as a set under a common parent identifier."

* type = #document (exactly)

* timestamp 1.. 
  * ^short = "Persistent original date of approval"
  * ^definition = "Original date in which this ePI document received its first authorization. As with the identifier, this date persists across versions. "

* meta
  * versionId 0..1
  * lastUpdated 0..1

* language 1..1

* entry 1.. // 
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "$this.resource"
/* * entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "$this.resource" */


* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the ePI bundle"
* entry ^definition = "An entry resource included in the ePI document bundle resource."
* entry ^comment = "Must contain the ePI Composition as the first entry (only a single Composition resource instance may be included).  Additional constraints are specified in the ePI Composition profile."
* entry
  * resource 1..
  * search ..0
  * response ..0
  * request ..0
  * fullUrl 1..

* insert BundleEntry (composition, 1..1, CompositionUvEpi, ePI Composition, ePI Composition )
* insert BundleEntry (organization, 0.., OrganizationUvEpi, Organization, Organization)
* insert BundleEntry (authorization, 0.., RegulatedAuthorizationUvEpi, Regulated Authorization, Regulated Authorization )
* insert BundleEntry (medicinalProduct, 0.., MedicinalProductDefinitionUvEpi, Medicinal Product, Medicinal Product Definition )
* insert BundleEntry (packagedProduct, 0.., PackagedProductDefinitionUvEpi, Packaged Product, Packaged Product Definition )
* insert BundleEntry (administrableProduct, 0.., AdministrableProductDefinitionUvEpi, Administrable Product, Administrable Product Definition )
* insert BundleEntry (manufacturedItem, 0.., ManufacturedItemDefinitionUvEpi, Manufactured Item, Manufactured Item Definition )
* insert BundleEntry (ingredient, 0.., IngredientUvEpi, Ingredient, Ingredient )
* insert BundleEntry (clinicalUse, 0.., ClinicalUseDefinition, Interactions\, Warnings\, Indications\,Contraindications, ePI ClinicalUseDefinition used for Interactions\, Warnings\,Indication\, Contraindication)
* insert BundleEntry (substanceDefinition, 0.., SubstanceDefinitionUvEpi, Substance Definition, Substance Definition )
* insert BundleEntry (binary, 0.., Binary, Binary, Binary )


* signature 
  * ^short = "Digital Signature."
  * ^definition = "Market authorization holder can digitally sign the ePI document."




